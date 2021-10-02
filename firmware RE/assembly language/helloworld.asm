BITS 32

extern printf

section .data

        mssg: db   "helloworld", 10,0 
        
section .text
        global main
        
        main: 
        
        push    ebp		
        mov     ebp,esp
        
        push    mssg
        call    printf
  	
        leave     
	 ret	
         
