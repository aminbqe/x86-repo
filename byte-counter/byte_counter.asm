; MOV SI , [ADD.] 
MOV BX , SI
MOV CX , [400H] 
XOR DX , DX
MOV DI , 100H
FIRSTLOOP:
    MOV AL , [BX]
    SCASB 
    JNZ NEXT
    INC DX  
    TEST DX
    JZ IFZ
    NEXT : LOOP FIRSTLOOP 
        MOV [DI] , AL
        MOV [DI+1] , DX
        INC DI
        INC DI
 IFZ:   INC BX
        MOV SI , [100H]
        MOV AL , [BX]
        AGAIN:
             SCASB
             JNZ NXT
             INC BX
             MOV SI , [400H]
             JMP AGAIN
             NXT:
                JMP FIRSTLOOP
             
        
    