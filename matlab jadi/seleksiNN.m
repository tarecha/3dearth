
function[barisMariks,kolomMatriks] = seleksiPR(barisKoma, kolomKoma)

barisMatriksMin = floor(barisKoma);
barisMatriksMax = barisMatriksMin + 1;

dBarisMatriksMin = abs (barisKoma - barisMatriksMin);
dBarisMatriksMax = abs (barisKoma - barisMatriksMax);

if (dBarisMatriksMin > dBarisMatriksMax)
    barisMariks = barisMatriksMax;
elseif (dBarisMatriksMin < dBarisMatriksMax)
    barisMariks = barisMatriksMin;
else
    barisMariks = barisMatriksMin;
end



kolomMatriksMin = floor(kolomKoma);
kolomMatriksMax = kolomMatriksMin + 1;

dKolomMatriksMin = abs (kolomKoma - kolomMatriksMin);
dKolomMatriksMax = abs (kolomKoma - kolomMatriksMax);

if (dKolomMatriksMin > dKolomMatriksMax)
    kolomMatriks = kolomMatriksMax;
elseif (dKolomMatriksMin < dKolomMatriksMax)
    kolomMatriks = kolomMatriksMin;
else
    kolomMatriks = kolomMatriksMin;
end

return