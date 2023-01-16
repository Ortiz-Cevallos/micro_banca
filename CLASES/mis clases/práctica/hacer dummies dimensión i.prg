for !l=1 to 4
smpl @all
series D_{!l}=0
next
For !i=1 to 17
if !i<5 then 
smpl !i !i
series D_1=1
else
	if !i>4 and !i<9 then 
		smpl !i !i
		series D_2=1
		else
		if !i>8 and !i<13 then 
			smpl !i !i
			series D_3=1
			else
			if !i>12 and !i<17 then 
				smpl !i !i
				series D_4=1
			endif
		endif	
	endif
endif
next
