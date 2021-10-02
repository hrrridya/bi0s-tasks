BITS 32

extern printf

section .data   ; section for initialised data

        a:  dd  4                      ; [dd- define double word(4bytes)] a as 4 
        b:  dd  6                      ; defining b as a double word with value 6  
        mssg: db   "sum = %d", 10,0    ; defining each byte(db) of a string called 'mssg'to be printed along with a newline character(10) and null character(0)
        
section .text   ; code section

        global main
        
        main: 
        
        push    ebp		        ; push base pointer to stack and set up stack frame for the function
        mov     ebp,esp                ; move the current position of stack pointer to base pointer so that it will be a reference
        
        mov     eax, [a]               ; move the value of a into eax register
        add     eax, [b]               ; add the value of b to the eax register so that it will be a+b
        push    eax                    ; value of a+b is pushed onto stack
        push    mssg
        call    printf
        
        mov     esp, ebp	        ; takedown stack frame
        pop     ebp	                ; same as leave
        
        mov	eax,0		        ; return value
	ret	
         
