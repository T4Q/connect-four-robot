function ch=chec(i,j)

global pp

ch=not(isempty(find(and(pp(1,:)==i,pp(2,:)==j)==1)));
