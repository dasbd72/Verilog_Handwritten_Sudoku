import numpy as np
from tensorflow import keras
MODEL_FILE = 'Number/Number_Model'
OUTPUT_PATH = 'Model2Verilog/'

BITS = 12
MULT = 2**8
FORM = 'int16'

KER_0_WIDTH = 64
KER_0_HEIGHT = 784
KER_1_WIDTH = 10
KER_1_HEIGHT = 64


def twos_comp(val: int):
    if(val < 0):
        val = (-val | (1 << BITS))
        val = ~val
        val = val + 1
        val = val & ((1 << BITS) - 1)

    return '%03x' % val


class Generator:
    def __init__(self):
        self.model = keras.models.load_model(MODEL_FILE)

        self.kernel_1 = np.array(self.model.layers[1].kernel)
        self.kernel_2 = np.array(self.model.layers[2].kernel)
        self.bias_1 = np.array(self.model.layers[1].bias)
        self.bias_2 = np.array(self.model.layers[2].bias)

        self.kernel_1 = (self.kernel_1 * MULT).astype(FORM)
        self.kernel_2 = (self.kernel_2 * MULT).astype(FORM)

        self.bias_1 = (self.bias_1 * MULT).astype(FORM)
        self.bias_2 = (self.bias_2 * MULT).astype(FORM)
        return

    def showdata(self):
        print(self.kernel_1.shape)
        print(self.kernel_1.max())
        print(self.kernel_1.min())

        print(self.bias_1.shape)
        print(self.bias_1.max())
        print(self.bias_1.min())

        print(self.kernel_2.shape)
        print(self.kernel_2.max())
        print(self.kernel_2.min())

        print(self.bias_2.shape)
        print(self.bias_2.max())
        print(self.bias_2.min())

    def weightgen(self):
        file = open(OUTPUT_PATH+'weights.coe', 'w')
        kernel_1 = ',\n'.join(list(map(twos_comp, self.kernel_1.reshape(-1))))
        bias_1 = ',\n'.join(list(map(twos_comp, self.bias_1.reshape(-1))))
        kernel_2 = ',\n'.join(list(map(twos_comp, self.kernel_2.reshape(-1))))
        bias_2 = ',\n'.join(list(map(twos_comp, self.bias_2.reshape(-1))))
        file.write('memory_initialization_radix=16;\n')
        file.write('memory_initialization_vector=\n')
        file.write('{},\n'.format(kernel_1))
        file.write('{},\n'.format(bias_1))
        file.write('{},\n'.format(kernel_2))
        file.write('{};'.format(bias_2))
        return

    def generate(self):
        self.weightgen()
        return


if __name__ == '__main__':
    gen = Generator()
    gen.showdata()
    gen.generate()
