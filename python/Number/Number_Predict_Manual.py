# %%
import numpy as np
from tensorflow import keras
import tkinter as tk

SIZE = 52
CHUNK = 4
MULT = 2**8
FORM = 'int16'

# %%


def relu(arr):
    return np.maximum(arr, 0)


def num2str(n):
    return f'1\'b{int(n)}'


class Generator:
    def __init__(self):
        self.bitmap = np.zeros((SIZE, SIZE))
        self.is_mouse_down = False
        self.number = 1
        self.window = tk.Tk()
        self.canvas = tk.Canvas(
            self.window, width=SIZE*CHUNK, height=SIZE*CHUNK)

        self.canvas.pack()
        self.canvas.create_rectangle(
            0, 0, CHUNK*SIZE, CHUNK*SIZE, fill='white')
        self.window.title('Data Generator')
        self.window.geometry(f'{SIZE*CHUNK}x{SIZE*CHUNK}')
        self.window.minsize(SIZE*CHUNK, SIZE*CHUNK)
        self.window.maxsize(SIZE*CHUNK, SIZE*CHUNK)
        self.window.bind('<Motion>', self.mouse_motion)
        self.window.bind('<Button>', self.mouse_button_pressed)
        self.window.bind('<ButtonRelease>', self.mouse_button_released)
        self.window.bind('<Key>', self.keyboard)

        self.model = keras.models.load_model('Number/Number_Model')
        self.kernel_1 = (
            np.array(self.model.layers[1].kernel) * MULT).astype(FORM)
        self.kernel_2 = (
            np.array(self.model.layers[2].kernel) * MULT).astype(FORM)
        self.bias_1 = (np.array(self.model.layers[1].bias) * MULT).astype(FORM)
        self.bias_2 = (np.array(self.model.layers[2].bias) * MULT).astype(FORM)

    def start(self):
        self.window.mainloop()

    def update_canvas(self, x=-1, y=-1):
        if(x == -1 or y == -1):
            self.canvas.create_rectangle(
                0, 0, CHUNK*SIZE, CHUNK*SIZE, fill='white')
            for row in range(SIZE):
                for col in range(SIZE):
                    if(self.bitmap[row][col]):
                        self.canvas.create_rectangle(
                            col * CHUNK, row * CHUNK, (col+1) * CHUNK, (row+1) * CHUNK, fill='black')
        else:
            if(self.bitmap[y][x]):
                self.canvas.create_rectangle(
                    x * CHUNK, y * CHUNK, (x+1) * CHUNK, (y+1) * CHUNK, fill='black')
        return

    def draw_canvas(self, x, y):
        if (x < 0 or x >= 448 or y < 0 or y >= 448):
            return
        if(self.bitmap[int(y / CHUNK)][int(x / CHUNK)]):
            return
        self.bitmap[int(y / CHUNK)][int(x / CHUNK)] = 1
        self.update_canvas(int(x / CHUNK), int(y / CHUNK))
        return

    def erase_canvas(self):
        for y in range(SIZE):
            for x in range(SIZE):
                self.bitmap[y][x] = 0
        self.update_canvas()
        return

    def mouse_button_pressed(self, event):
        if(event.num == 1):
            self.is_mouse_down = True
            self.draw_canvas(event.x, event.y)
        return

    def mouse_button_released(self, event):
        if(event.num == 1):
            self.is_mouse_down = False
        return

    def mouse_motion(self, event):
        if(self.is_mouse_down):
            self.draw_canvas(event.x, event.y)
        return

    def keyboard(self, event):
        if(event.keysym == 'Return'):
            self.predict()
            self.erase_canvas()
        elif(event.keysym == 'd' or event.keysym == 'BackSpace'):
            self.erase_canvas()
        return

    def printnumpy(self, file, label: str, array: np.ndarray):
        file.write(label + ' : \n')
        file.write(f'( Min, Max ) : ( {array.min()}, {array.max()} ) \n')
        file.write(np.array2string(array) + '\n')

    def predict(self):
        scaled_bitmap = np.zeros((28, 28))
        for row in range(SIZE):
            for col in range(SIZE):
                if(self.bitmap[row][col]):
                    scaled_bitmap[int(row/2)+2][int(col/2)+2] = 1

        input_layer = scaled_bitmap.reshape(1, 784)

        layer_1_dot = np.dot(input_layer, self.kernel_1)
        layer_1_bias = layer_1_dot + self.bias_1
        layer_1_output = relu(layer_1_bias)

        layer_2_dot = (np.dot(layer_1_output, self.kernel_2) //
                       MULT).astype(FORM)
        layer_2_output = layer_2_dot + self.bias_2

        print(layer_2_output.argmax())
        print(layer_2_output)

        file = open('Number/verify.txt', 'w')

        file.write('img : \n')
        file.write(','.join(list(map(num2str, self.bitmap.reshape(-1)))) + '\n')
        file.write('layer_input : \n')
        file.write(','.join(list(map(num2str, input_layer.reshape(-1)))) + '\n')
        self.printnumpy(file, 'layer_1_dot', layer_1_dot)
        self.printnumpy(file, 'layer_1_bias', layer_1_bias)
        self.printnumpy(file, 'layer_1_output', layer_1_output)
        self.printnumpy(file, 'layer_2_dot', layer_2_dot)
        self.printnumpy(file, 'layer_2_output', layer_2_output)
        file.write('predict : \n')
        file.write(f'{layer_2_output.argmax()}\n')


if __name__ == '__main__':
    win = Generator()
    win.start()
