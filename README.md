# VM Translator

This project is a VM translator written in Rust. It translates VM commands into assembly language, making it suitable for use with various VM simulators.

## Features

- Translates VM commands to Hack assembly language.
- Handles various VM commands including arithmetic, memory access, and control flow.

## Installation

### Prerequisites

Before running the project, ensure that the following tools are installed:

1. **Rust**: The project is written in Rust, so you’ll need to have the Rust compiler and Cargo (Rust's package manager) installed on your system.
   - Install Rust by following the instructions at [Rust's official website](https://www.rust-lang.org/tools/install).

2. **Assembler/VM Simulator**: After translating VM commands into assembly code, you will need an assembler to run the translated assembly code or a VM simulator like the one provided in the Nand2Tetris project.

### Steps

1. **Clone the Repository**:
   - If the project is hosted on a Git repository, clone it using the following command:
     ```bash
     git clone https://github.com/username/repo-name.git
     ```
   - If not, ensure all source files are in a local directory.

2. **Navigate to the Project Directory**:
   - Open a terminal and navigate to the project's root directory:
     ```bash
     cd path-to-project-directory
     ```

3. **Build the Project**:
   - Use Cargo to build the project:
     ```bash
     cargo build
     ```
   - This will compile the source code and generate an executable in the `target` directory.

## How to Run

This section provides detailed instructions for running the VM translator written in Rust.

1. **Run the Translator**:
   - Use the following command to run the translator on a `.vm` file:
     ```bash
     cargo run -- path-to-input-file.vm
     ```
   - Replace `path-to-input-file.vm` with the path to the `.vm` file you want to translate.

   - Example:
     ```bash
     cargo run -- ./examples/SimpleAdd.vm
     ```

2. **Output**:
   - The output will be the assembly translation of the VM commands and will be saved to a file in the same directory as the input file. The output file will have a `.asm` extension.
   
   - Example:
     ```bash
     ./examples/SimpleAdd.asm
     ```

3. **Test with an Assembler/VM Simulator**:
   - After generating the `.asm` file, you can load the file into an assembler or a VM simulator to test the translated assembly code.
   - If using the Nand2Tetris toolchain:
     1. Open the VM emulator provided by Nand2Tetris.
     2. Load the `.asm` file and run the program to verify its behavior.

### Running Tests

## Example

Suppose you have a `SimpleAdd.vm` file containing the following VM code:

```plaintext
push constant 7
push constant 3
add
```
To translate this into assembly, use:

```bash
Copy code
cargo run -- ./examples/SimpleAdd.vm
```
The resulting SimpleAdd.asm file will contain the following assembly code:

```assembly
Copy code
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1
```
You can now load this SimpleAdd.asm file into an assembler or VM simulator to execute it.
