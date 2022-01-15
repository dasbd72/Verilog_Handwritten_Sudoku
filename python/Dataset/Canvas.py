import tkinter as tk
import numpy as np
import csv

SIZE = 28
CHUNK = 16
DEBUG = False
DATA_FILE = 'Dataset/dataset.csv'


def debug(message, level=0):
    if(DEBUG or level == 1):
        print(message)
    return


class Generator:
    def __init__(self):
        self.bitmap = np.zeros((SIZE, SIZE))
        self.number_cnt = np.zeros(10)
        self.is_mouse_down = False
        self.number = 1
        self.root = tk.Tk()
        self.canvas = tk.Canvas(self.root, width=SIZE*CHUNK, height=SIZE*CHUNK)
        self.label = tk.Label(self.root, width=100,
                              height=100, text=str(self.number), font=("Arial", 32))

        self.canvas.pack(side=tk.LEFT)
        self.label.pack(side=tk.LEFT)
        self.canvas.create_rectangle(
            0, 0, CHUNK*SIZE, CHUNK*SIZE, fill='white')
        self.root.title('Data Generator')
        self.root.geometry(f'{SIZE*CHUNK + 200}x{SIZE*CHUNK}')
        self.root.minsize(SIZE*CHUNK + 200, SIZE*CHUNK)
        self.root.maxsize(SIZE*CHUNK + 200, SIZE*CHUNK)
        self.root.bind('<Motion>', self.mouse_motion)
        self.root.bind('<Button>', self.mouse_button_pressed)
        self.root.bind('<ButtonRelease>', self.mouse_button_released)
        self.root.bind('<Key>', self.keyboard)

        self.count_numbers()
        print(self.number_cnt)

    def start(self):
        self.root.mainloop()

    def count_numbers(self):
        with open(DATA_FILE, mode='r') as data_file:
            rows = csv.reader(data_file)
            for row in rows:
                self.number_cnt[int(row[0])] += 1

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

    def update_number(self, num):
        self.number = num
        self.label['text'] = num

    def draw_canvas(self, x, y):
        if (x < 0 or x >= 448 or y < 0 or y >= 448):
            return
        if(self.bitmap[int(y / CHUNK)][int(x / CHUNK)]):
            return
        self.bitmap[int(y / CHUNK)][int(x / CHUNK)] = 1
        self.update_canvas(int(x / CHUNK), int(y / CHUNK))
        return

    def save(self):
        debug('[Debug] save')
        with open(DATA_FILE, mode='a', newline='') as data_file:
            data_writer = csv.writer(
                data_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
            data_writer.writerow(np.append(self.number, self.bitmap.reshape(
                (SIZE * SIZE))).astype('int'))
        return

    def erase_canvas(self):
        debug('[Debug] erase')
        for y in range(SIZE):
            for x in range(SIZE):
                self.bitmap[y][x] = 0
        self.update_canvas()
        return

    def mouse_button_pressed(self, event):
        if(event.num == 1):
            self.is_mouse_down = True
            self.draw_canvas(event.x, event.y)
            debug(f'{event.x}, {event.y}')
        return

    def mouse_button_released(self, event):
        if(event.num == 1):
            self.is_mouse_down = False
        return

    def mouse_motion(self, event):
        if(self.is_mouse_down):
            self.draw_canvas(event.x, event.y)
            debug(f'{event.x}, {event.y}')
            debug(event)
        return

    def keyboard(self, event):
        debug(event.keysym)
        if(event.keysym == 'Return'):
            self.save()
            self.erase_canvas()
        elif(event.keysym == 'd' or event.keysym == 'BackSpace'):
            self.erase_canvas()
        elif(str(event.keysym).isdigit()):
            self.update_number(int(event.keysym))
            self.erase_canvas()
        return


def main():
    win = Generator()
    win.start()
    return


if __name__ == '__main__':
    main()
