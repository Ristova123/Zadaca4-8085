# Zadaca4-8085

Да се напише еквивалентна асемблерска програма на
соодветната C програма: 


```
void main()
{
 const int = 30;
 int x[50], y[50], z[50];
 for (int i=1; i<=N; i++)
 {
 z[i]=10;
 x[i]=4*y[i];
 }
} 

```
**Resenie:**

```
ADRX DS 50 ;декларација на поле ADRX со 50 елементи

ADRZ DS 50 ;декларација на поле ADRZ со 50 елементи

ADRY DS 50 ;декларација на поле ADRY со 50 елементи

 N DS 1 ;дефинирање на еднобајтна променлива N

 MVI A,30d ;Иницијализација на N на 30

 STA N

 LXI B,ADRZ ;BC регистарскиот пар се полни со адресата на ADRZ

 LXI D,ADRY ;DE регистарскиот пар се полни со адресата на ADRY

 LXI H,ADRX ;HL регистарскиот пар се полни со адресата на ADRX

VRTI: MVI A,10d

 STAX B ;се сместува 10 како елемент на полето ADRZ (индиректно преку BC)

 LDAX D ;во ACC се вчитува елементот од ADRY полето (индиректно преку DE)

 RLC ; множење со 4

 RLC

 MOV M,A ;тоа што е во ACC се сместува во полето ADRX (индиректно преку HL)

 INX B ;BC покажува на наредниот елемент од полето ADRZ

 INX D ;DE покажува на наредниот елемент од полето ADRY

 INX H ;HL покажува на наредниот елемент од полето ADRX

 LDA N

 DCR A ;намали го бројачот за 1.

 STA N

JNZ VRTI ;се додека бројачот е различен од 0.
```


 ![Screenshot (1)](https://github.com/Ristova123/Zadaca4-8085/blob/main/Source%20code%20.png)
 
**Develop by:**

[Tamara Ristova ](https://github.com/Ristova123)


**Subject**

Microcomputer's systems

**Built With**

This project is built using the following tools:

- [8085 simulator](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file) : Assembler and emulator for the Intel 8085 microprocessor.

**Getting Started**

To get a local copy up and running, follow these steps.

**Prerequisites**

In order to run this project you need:

A working computer
Connection to internet
Setup

**How to Run**

To run the program, you need an 8085 emulator or assembler. You can use emulators like DOSBox or TASM (Turbo Assembler). Here's how to run the program using 8085 simulator:

1. Download and install 8085 simulator from [here](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file).
2. Clone this repository to your local machine.
3. Open 8085 simulator and load the `Zadaca4 code.asm` file.
4. Assemble the code by pressing the Assemble button.
5. Run the program by pressing the Run button or by pressing F10.
