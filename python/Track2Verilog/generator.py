WIDTH = 640
HEIGHT = 480
SIZE = 9
BLOCK_SIZE = 52
MOUSE_X = 'mouse_x_pos'
MOUSE_Y = 'mouse_y_pos'
BLOCK_X = 'block_x'
BLOCK_Y = 'block_y'
N_BLOCK_X = 'next_block_x'
N_BLOCK_Y = 'next_block_y'
BLOCK_X_POS = 'block_x_pos'
BLOCK_Y_POS = 'block_y_pos'

adjust_bits = [0, 1, 2, 2, 3, 4, 4, 5, 6]
col_pos = [WIDTH-(r+1)*BLOCK_SIZE-adjust_bits[r]*2 for r in range(SIZE)]
row_pos = [HEIGHT-(r+1)*BLOCK_SIZE-adjust_bits[r]*2 for r in range(SIZE)]
print(row_pos)
print(col_pos)


def generate():
    file = open('Track2Verilog/track.v', 'w')
    for r in range(SIZE):
        if(r == 0):
            file.write(f'if')
        else:
            file.write(f'else if')
        file.write(f' ({MOUSE_Y} >= {row_pos[r]}) ')
        file.write(f'{N_BLOCK_Y} = {SIZE-1-r};\n')
    file.write(f'else {N_BLOCK_Y} = {9};\n')

    for c in range(SIZE):
        if(c == 0):
            file.write(f'if')
        else:
            file.write(f'else if')
        file.write(f' ({MOUSE_X} >= {col_pos[c]}) ')
        file.write(f'{N_BLOCK_X} = {SIZE-1-c};\n')

    file.write(f'else {N_BLOCK_X} = {9};\n')

    for r in range(SIZE):
        if(r == 0):
            file.write(f'if')
        else:
            file.write(f'else if')
        file.write(
            f' ({BLOCK_Y} == {SIZE-r-1}) {BLOCK_Y_POS} = {row_pos[r]};\n')
    file.write(f'else {BLOCK_Y_POS} = 0;\n')

    for c in range(SIZE):
        if(c == 0):
            file.write(f'if')
        else:
            file.write(f'else if')
        file.write(
            f' ({BLOCK_X} == {SIZE-c-1}) {BLOCK_X_POS} = {col_pos[c]};\n')
    file.write(f'else {BLOCK_X_POS} = 0;\n')


generate()
