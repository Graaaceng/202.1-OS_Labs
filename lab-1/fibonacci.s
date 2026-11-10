.global _start
_start:
  mov x0, #12

  mov x1, #0
  mov x2, #1

_fib:
  cmp w0, #1
  blt _exit
  add x3, x1, x2
  mov x1, x2
  mov x2, x3
  sub x0, x0, #1

  b _fib

_exit:
  mov x0, x2
  mov w8, #93
  svc #0