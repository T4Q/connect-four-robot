function updat(i,j,p)

global pp pm winn

% p=1 enemy
% p=2 player


% update pp
m= and(pp(1,:)==i,pp(2,:)==j)==1;
if i-1<0
    pp(1,m)=0;
else
    pp(1,m)=i-1;
end

% update pm for displaying
% and win table
m=and(winn(1,:)==i,winn(2,:)==j)==1;
if p==1
    winn(3,m)=1;
    pm(i,j)=1;
else
    winn(3,m)=2;
    pm(i,j)=2;
end