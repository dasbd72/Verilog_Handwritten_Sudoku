import tensorflow as tf
import numpy as np
from tensorflow import keras
import io
MODEL_FILE = 'Number/Number_Model'
OUTPUT_PATH = 'Model2Verilog/'

BITS = 16
MULT = 2**8
FORM = 'int' + str(BITS)

KER_0_WIDTH = 64
KER_0_HEIGHT = 784
KER_1_WIDTH = 10
KER_1_HEIGHT = 64
INP = 'layer_input'
LAY0 = 'layer_0'
NLAY0 = 'next_layer_0'
LAY1 = 'layer_1'
NLAY1 = 'next_layer_1'
KER0 = 'kernel_0'
KER1 = 'kernel_1'
BIAS0 = 'bias_0'
BIAS1 = 'bias_1'
ROW = 'row'


def twos_comp(val: int, bits: int):
    if(val < 0):
        val = (-val | (1 << bits))
        val = ~val
        val = val + 1
        val = val & ((1 << bits) - 1)
        return '%04x' % val
    else:
        return '%04x' % val


def num2hex16(n):
    return f'{16}\'h' + twos_comp(n, 16)


def num2hex32(n):
    return f'{32}\'h' + twos_comp(n, 32)


# def num2hex16(n):
#     if(n < 0):
#         return f'-{16}\'h' + '%04x' % -n
#     else:
#         return f'{16}\'h' + '%04x' % n


# def num2hex32(n):
#     if(n < 0):
#         return f'-{32}\'h' + '%04x' % -n
#     else:
#         return f'{32}\'h' + '%04x' % n


class Generator:
    def __init__(self):
        self.model = keras.models.load_model(MODEL_FILE)

        self.kernel_0 = np.array(self.model.layers[1].kernel)
        self.kernel_1 = np.array(self.model.layers[2].kernel)
        self.bias_0 = np.array(self.model.layers[1].bias)
        self.bias_1 = np.array(self.model.layers[2].bias)

        self.kernel_0 = (self.kernel_0 * MULT).astype(FORM)
        self.kernel_1 = (self.kernel_1 * MULT).astype(FORM)

        self.bias_0 = (self.bias_0 * MULT).astype(FORM)
        self.bias_1 = (self.bias_1 * MULT).astype(FORM)
        return

    def generate(self):
        self.param_kernel_0()
        self.param_kernel_1()
        self.kernel_0_dot()
        self.kernel_0_bias()
        self.kernel_0_relu()
        self.kernel_1_dot()
        self.kernel_1_bias()
        return

    ###################################### kernel 0 ######################################
    def kernel_0_dot(self):
        file = open(OUTPUT_PATH+'kernel_0_dot.v', 'w')

        for col in range(KER_0_WIDTH):
            file.write(
                f'                {NLAY0}[{(col+1)*BITS-1}-:{BITS}] = {LAY0}[{(col+1)*BITS-1}-:{BITS}] + (curr_input_digit * {KER0}[({ROW}*{KER_0_WIDTH}+{col}+1)*{BITS}-1-:{BITS}]);\n')
        pass

    def kernel_0_bias(self):
        file = open(OUTPUT_PATH+'kernel_0_bias.v', 'w')

        for col in range(KER_0_WIDTH):
            file.write(
                f'                {NLAY0}[{(col+1)*BITS-1}-:{BITS}] = {LAY0}[{(col+1)*BITS-1}-:{BITS}] + {BIAS0}[{(col+1)*BITS-1}-:{BITS}];\n')
        pass

    def kernel_0_relu(self):
        file = open(OUTPUT_PATH+'kernel_0_relu.v', 'w')

        for col in range(KER_0_WIDTH):
            file.write(
                f'                {NLAY0}[{(col+1)*BITS-1}-:{BITS}] = ({LAY0}[{(col+1)*BITS-1}] ? {BITS}\'b0 : {LAY0}[{(col+1)*BITS-1}-:{BITS}]);\n')
        pass

    ###################################### Kernel 1 ######################################
    def kernel_1_dot(self):
        file = open(OUTPUT_PATH+'kernel_1_dot.v', 'w')
        BITS = 32
        LAY0 = 'layer_0_32b'

        for col in range(KER_1_WIDTH):
            file.write(
                f'                {NLAY1}[{(col+1)*BITS-1}-:{BITS}] = {LAY1}[{(col+1)*BITS-1}-:{BITS}] + (curr_input_digit * {KER1}[({ROW}*{KER_1_WIDTH}+{col}+1)*{BITS}-1-:{BITS}]);\n')
        pass

    def kernel_1_bias(self):
        file = open(OUTPUT_PATH+'kernel_1_bias.v', 'w')
        BITS = 32
        LAY0 = 'layer_0_32b'

        for col in range(KER_1_WIDTH):
            file.write(
                f'                {NLAY1}[{(col+1)*BITS-1}-:{BITS}] = {LAY1}[{(col+1)*BITS-1}-:{BITS}] + {BIAS1}[{(col+1)*BITS-1}-:{BITS}];\n')
        pass

    def param_kernel_0(self):
        file = open(OUTPUT_PATH+'param_kernel_0.v', 'w')
        kernel_0 = ','.join(list(map(num2hex16, self.kernel_0.reshape(-1))))
        bias_0 = ','.join(list(map(num2hex16, self.bias_0.reshape(-1))))
        file.write('localparam [{}:0] kernel_0 = {{{}}};\n'.format(
            KER_0_HEIGHT*KER_0_WIDTH*BITS-1, kernel_0))
        file.write('localparam [{}:0] bias_0 = {{{}}};\n'.format(
            KER_0_WIDTH*BITS-1, bias_0))
        return

    def param_kernel_1(self):
        BITS = 32
        file = open(OUTPUT_PATH+'param_kernel_1.v', 'w')
        kernel_1 = ','.join(list(map(num2hex32, self.kernel_1.reshape(-1))))
        bias_1 = ','.join(list(map(num2hex32, self.bias_1.reshape(-1))))
        file.write('localparam [{}:0] kernel_1 = {{{}}};\n'.format(
            KER_1_HEIGHT*KER_1_WIDTH*BITS-1, kernel_1))
        file.write('localparam [{}:0] bias_1 = {{{}}};\n'.format(
            KER_1_WIDTH*BITS-1, bias_1))
        return


if __name__ == '__main__':
    gen = Generator()
    gen.generate()
