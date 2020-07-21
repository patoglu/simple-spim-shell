
#commands:
#binarysearch
#selectionsort
#showdivisible
#linearsearch
#exit


#Important note:
#This program will work on both original SPIM OS and our OS.
#Parses prints warning on shell about second time declaration.
#Since this is a parser error and I cannot modify any other files
#except this I need to keep it that way. You can search that warning on project (sym-tbl.cpp file 183. line.):
#{
#  yyerror ("Label is defined for the second time");
#  return (l);
#}
#I could fix this error simply by removing main labels on subprograms but in PDF it says
#"you will implement 3 regular MIPS assembly programs, which can run with the simple SPIM OS without any modification."
#so i didn't make that.


.data

shell_command: .space 30

prompt_char: .asciiz "patoglu@shell$ "
command_terminate: .asciiz "terminating shell.\n"
command_not_found: .asciiz"no such command: "


.text


main:





    shell_loop:

    li $v0, 4 #Print prompt symbol.
    la $a0, prompt_char
    syscall

    li $v0, 8 #Tell the system a string will be read
    la $a0, shell_command
    la $a1, 20 #specify the length of string to system
    syscall

    li $v0, 30
   	syscall



    j shell_loop
