echo off
echo bisoning...
bison comp.y -d
echo flexing...
flex lex.l 
echo linking...
gcc -o app Syntax.c list.c comp.tab.c stack.c lex.yy.c asmX86emiter.c
pause
exit