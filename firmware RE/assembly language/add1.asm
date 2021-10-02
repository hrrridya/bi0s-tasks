BITS 32

extern scanf
extern printf

section .data   ; section for initialised data

        a:  dd  4                             ; [dd- define double word(4bytes)] a as 4 
        b:  dd  6                             ; defining b as a double word with value 6  
        mssga: db   "enter integer a", 10,0   ; defining each byte(db) of a string called 'mssg'to be printed along with a newline character(10) and null character(0)
        mssgb: db   "enter integer b", 10,0
        mssgc: db   "sum = %d", 10,0
        format db   "%d"
        
section .text   ; code section

        global main
        
        main: 
        
        push    ebp		        ; push base pointer to stack and set up stack frame for the function
        mov     ebp,esp                ; move the current position of stack pointer to base pointer so that it will be a reference
        
        push    mssga
        call    printf
        
        push    a
        push    format
        call    scanf
        
        push    mssgb
        call    printf
        
        push    b
        push    format
        call    scanf
         
        mov     eax, [a]               ; move the value of a into eax register
        add     eax, [b]               ; add the value of b to the eax register so that it will be a+b
        push    eax                    ; value of a+b is pushed onto stack
        push    mssgc
        call    printf
        
        mov     esp, ebp	        ; takedown stack frame
        pop     ebp	                ; same as leave
        
        mov	eax,0		        ; return value
        ret
