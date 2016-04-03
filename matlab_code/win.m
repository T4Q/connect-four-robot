function w=win()

global winn

w=0;

% Find if enemy win 
b=[1 1 1 1];
c=[];
for k=1:length(winn)-length(b)+1
    if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
        c=[c;k];
    end
end
if isempty(c)
    % Find if player win 
    b=[2 2 2 2];
    c=[];
    for k=1:length(winn)-length(b)+1
        if length(find(winn(3,k:k+length(b)-1)==b))>length(b)-1
            c=[c;k];
        end
    end
    if ~isempty(c)
        w=2; % player win
    end
else
    w=1; % enemy win
end

