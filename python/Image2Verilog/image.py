import numpy as np
import cv2
COLORS = 2**24
PATH = 'Image2Verilog/'


def adjust(arr):
    blue = arr[0]
    green = arr[1]
    red = arr[2]
    rgb = red << 16 | green << 8 | blue
    if(red > 127):
        red = 255
    else:
        red = 0
    if(green > 127):
        green = 255
    else:
        green = 0
    if(blue > 127):
        blue = 255
    else:
        blue = 0
    return np.array([blue, green, red])


def encode(arr):
    blue = arr[0]
    green = arr[1]
    red = arr[2]
    rgb = red << 16 | green << 8 | blue
    code = 0
    if(rgb == 0x000000):
        code = 0
    elif(rgb == 0xffffff):
        code = 1
    elif(rgb == 0x0000ff):
        code = 2
    else:
        code = 3
    return code


def process(file: str):
    img = cv2.imread(PATH + file + '.png')
    adjust_img = np.array(list(map(adjust, img.reshape(-1, 3)))
                          ).reshape(img.shape).astype(np.uint8)

    file = open(PATH + file + '.coe', 'w')
    file.write('memory_initialization_radix=16;\n')
    file.write('memory_initialization_vector=\n')
    file.write(
        ','.join(list(map(str, list(map(encode, adjust_img.reshape(-1, 3)))))))

    cv2.imshow('img', adjust_img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


process('menu')
process('gameover')
