import pandas as pd
import numpy as np
from random import sample

SIZE = 2**8-1


def token2verilog(token):
    if(token == '.'):
        token = '0'
    return f'{4}\'d' + '%d' % int(token)


def board2verilog(board):
    return(','.join(map(token2verilog, list(board))))


sudoku = pd.read_csv('Sudoku2Verilog/sudoku-3m.csv')
sudoku = sudoku.sort_values('difficulty')

boards = np.array(sudoku[['puzzle']]).reshape(-1)
size = 3000000
easy_boards = np.random.choice(boards[0:10000], size=SIZE)
# normal_boards = np.random.choice(boards[size//2:size//2+10000], size=SIZE)
# difficult_boards = np.random.choice(boards[-10000:], size=SIZE)


def generate():
    file = open('Sudoku2Verilog/boards.v', 'w')
    for i in range(SIZE):
        file.write('            8\'h' + '%02x' %
                   i + ':board={' + board2verilog(easy_boards[i]) + '};\n')


generate()
