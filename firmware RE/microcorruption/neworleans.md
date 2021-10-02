# New Orleans


### function <check_password>

The address of paassword that we entered intially stored in r15 is moved to r13

r14 which was cleared is added to the value of r13

cmp.b compares each byte at the value of r13 with the value at r14(0x2400). If they are not same we return from function. But if they are same then value of r14 is incremented by 1 and it jumps to line 2 of function. The value of r14 is then again added to r13. So the next time the second byte of r13 will be compared to 0x2401. This comparison goes on till r14 is 08(cmp 0x08, r14). So it can be seen that the password is the 8 digits from 0x2400 to 0x2408.