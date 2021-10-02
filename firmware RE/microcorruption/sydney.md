# Sydney


### function <check_password> 

cmp	#0x4c27, 0x0(r15):  
  Here the frist comparison is btwn two bytes of r15 and r15+1 and 0x4c27
  
  cmp	#0x4e64, 0x2(r15):  
  Here r15+2 and r15+3 is compared with and 0x4e64
  
  And so on two more comparisons 
  
  So i typed out 4c27 4e64 726d 7560 but it came out wrong. So i googled for the solution and learned bout endianess. So here the values were stored in the reverese order as i checked in the memory dump. Therefore it was little endian which means the least significant bits are stored at the lower address. 
  
So the password was 274c 644e 6d72 6075