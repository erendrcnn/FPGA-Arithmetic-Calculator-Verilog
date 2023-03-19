# FPGA-Arithmetic-Calculator-Verilog
It is a project design that can work on an FPGA that takes input from the keyboard using the UART protocol and can perform 4 arithmetic operations.

# INPUT:
0 - 360 (INTEGER) / BINARY: 0 - 101101000 -> (9 BIT)

Q-B-C-P : Operation Command

EXAMPLE TERMINAL INPUT: (“128 B “) -> The sine value of the Number 128 is reflected to the FPGA 7-Segment.

# OUTPUT:
1) XX,YZ ( DOUBLE ) for CHAR = Q ( SQRT )

2) ±X,YZ ( DOUBLE ) for CHAR = B ( SINUS )

3) ±X,YZ ( DOUBLE ) for CHAR = C ( COSIN )

4) 0 & 1 ( BOOLEAN ) for CHAR = P ( PRIMARY )

# Explanation:

• The project consists of two parts and a main module.
• First part: 4 calculation modules were written to be used outside of FPGA. Tested with Testbench codes.
(sin_value.v, cos_value.v, square_root.v, prime_check.v, test_bench.v)

- Sin_value: The number is converted to IEEE 754 double-precision binary floating-point format. The sine value is obtained by substituting in the Taylor function.
- Cos_value: The number is converted to IEEE 754 double-precision binary floating-point format. The cosine value is obtained by substituting it in the Taylor function.
- Square_root: The number is converted to IEEE 754 double-precision binary floating-point format. The square root of the number is obtained using Verilog's math function.
- Prime_check: The number is checked by taking the mode with the previous ones and the prime is determined.

• Second part: 4 calculation modules to be used on the FPGA and 1 receiver module for receiving data from the keyboard were written. (sin.v, cos.v, square.v, prime.v, reciever.v)

- Sin: It gives the output by rounding the sine value corresponding to the entered number.
- Cos: It gives the output by rounding the cosine value corresponding to the entered number.
- Square: Rounds the square root value corresponding to the entered number and outputs it.
- Prime: If the entered number is prime, it will output 1, otherwise 0.
- Receiver: Outputs the ASCII values of the keys pressed on the keyboard with the help of the UART protocol.

• Main Module (proje.v)
- All other modules are used in this module.
- Using the UART protocol, data is received until the space character appears.
- The received data is thrown into a temporary memory according to the number of digits.
- According to the capital letter operation command given in the received data, the output of the number given as input to the module of the operation to be calculated by using the data in the memory is obtained.
- After the latest operations are completed, the output is reflected to the appropriate 7 Segment LEDs of the FPGA device.
- As long as there is no different operation and number via UART, the LEDs keep their old state and continue to light.
** Operations performed in all modules are explained in the form of comments.
