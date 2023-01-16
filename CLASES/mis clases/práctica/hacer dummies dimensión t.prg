for !l=1 to 4
smpl @all
series T_{!l}=0
next
For !i=1 to 4
smpl !i !i
series t_{!i}=1
smpl !i+4 !i+4
series t_{!i}=1
smpl !i+8 !i+8
series t_{!i}=1
smpl !i+12 !i+12
series t_{!i}=1
next
