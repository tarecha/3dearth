
function[barisMariks,kolomMatriks] = seleksiBF(barisKoma, kolomKoma)
dmin = inf;
for i=1:3601
    for j=1:3601
        d = sqrt(((i - barisKoma)^2) + ((j - kolomKoma)^2));
        if d < dmin
            dmin = d;
            barisMariks = i;
            kolomMatriks = j;
        end;
    end;
end;
return