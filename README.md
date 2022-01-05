# Sudoku

## Reference

[float 32 calculation](https://en.wikipedia.org/wiki/Single-precision_floating-point_format)

## Memory Usage (tot : 2 _ 1024 _ 1024 = 2097152)

- Picture_Menu : 1 \*  76800   = 76800
- Picture_Game : 12 \* 76800   = 921600
- Pixel_Number : 10 \* (52*52) = 27040

## Dependency

- Top.v
  - Sudoku.v
  - mouse/Mouse.v
    - mouse/MouseCtl.vhd
      - mouse/Ps2Interface.vhd
    - mouse/MouseDisplay.vhd