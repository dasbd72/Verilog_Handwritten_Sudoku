# Sudoku

## Reference

[float 32 calculation](https://en.wikipedia.org/wiki/Single-precision_floating-point_format)

## Memory Usage (tot : 2 _ 1024 _ 1024 = 2097152)

- Weight : 16 \* (784 \* 64 + 64 + 64 \* 10 + 10) = 814240
- Picture_Menu : 2 \* 76800 = 153600
- Picture_Game : 3 \* 76800 = 230400
- Picture_Over : 2 \* 76800 = 153600
- Pixel_Number : 10 \* (52\*52) = 27040

## Dependency

- Top.v
  - Sudoku.v
  - game/SudokuGenerator.v
  - mouse/Mouse.v
    - mouse/MouseCtl.vhd
      - mouse/Ps2Interface.vhd
    - mouse/MouseDisplay.vhd
  - mouse/MouseMenu.v
  - mouse/MouseDraw.v
  - utilities/LSFR.v
  - VGA/VGA_Top.v
  - chip2chip/P1Controller.v
  - chip2chip/P2Controller.v

## Reference

[Puzzle Dataset](https://www.kaggle.com/radcliffe/3-million-sudoku-puzzles-with-ratings)
