function [i,j]=next_play()

global pp winn

% Find if computer win 
b=[2 2 2];
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if ~isempty(c)
    for k=1:length(c)
        if winn(3,c(k)-1)==0 && chec(winn(1,c(k)-1),winn(2,c(k)-1))==1
                    i=winn(1,c(k)-1);
                    j=winn(2,c(k)-1);
                    return;
        elseif winn(3,c(k)+3)==0 && chec(winn(1,c(k)+3),winn(2,c(k)+3))==1
                    i=winn(1,c(k)+3);
                    j=winn(2,c(k)+3);
                    return;
        end
    end
end

% Find if enemy win 
b=[1 1 1];
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if ~isempty(c)
    for k=1:length(c)
        if winn(3,c(k)-1)==0 && chec(winn(1,c(k)-1),winn(2,c(k)-1))==1
                    i=winn(1,c(k)-1);
                    j=winn(2,c(k)-1);
                    return;
        elseif winn(3,c(k)+3)==0 && chec(winn(1,c(k)+3),winn(2,c(k)+3))==1
                    i=winn(1,c(k)+3);
                    j=winn(2,c(k)+3);
                    return;
        end
    end
end

% Find if computer has [2 2] 
b=[2 2];
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if ~isempty(c)
    for k=1:length(c)
        if winn(3,c(k)-1)==0 && chec(winn(1,c(k)-1),winn(2,c(k)-1))==1
                    i=winn(1,c(k)-1);
                    j=winn(2,c(k)-1);
                    return;
        elseif winn(3,c(k)+2)==0 && chec(winn(1,c(k)+2),winn(2,c(k)+2))==1
                    i=winn(1,c(k)+2);
                    j=winn(2,c(k)+2);
                    return;
        end
    end
end

% Find if enemy has [1 1] 
b=[1 1];
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if ~isempty(c)
    for k=1:length(c)
        if winn(3,c(k)-1)==0 && chec(winn(1,c(k)-1),winn(2,c(k)-1))==1
                    i=winn(1,c(k)-1);
                    j=winn(2,c(k)-1);
                    return;
        elseif winn(3,c(k)+2)==0 && chec(winn(1,c(k)+2),winn(2,c(k)+2))==1
                    i=winn(1,c(k)+2);
                    j=winn(2,c(k)+2);
                    return;
        end
    end
end

% Find if computer has [2] 
b=2;
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if ~isempty(c)
    for k=1:length(c)
        if winn(3,c(k)-1)==0 && chec(winn(1,c(k)-1),winn(2,c(k)-1))==1
                    i=winn(1,c(k)-1);
                    j=winn(2,c(k)-1);
                    return;
        elseif winn(3,c(k)+1)==0 && chec(winn(1,c(k)+1),winn(2,c(k)+1))==1
                    i=winn(1,c(k)+1);
                    j=winn(2,c(k)+1);
                    return;
        end
    end
end

% Otherwise (any play)
k=randi(7,1);
i=pp(1,k);
j=pp(2,k);