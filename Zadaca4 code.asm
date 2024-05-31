
ADRX DS 50 ;

ADRZ DS 50 ;

ADRY DS 50 ;

 N DS 1 ;

 MVI A,30d ;

 STA N

 LXI B,ADRZ ;

 LXI D,ADRY ;

 LXI H,ADRX ;

VRTI: MVI A,10d

 STAX B ;

 LDAX D ;

 RLC ; 

 RLC

 MOV M,A ;

 INX B ;

 INX D ;

 INX H ;

 LDA N

 DCR A ;

 STA N

JNZ VRTI ;
