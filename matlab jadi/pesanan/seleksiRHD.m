
function[barisMariks,kolomMatriks] = seleksiRHD(barisKoma, kolomKoma)

barisMatriksMin = floor(barisKoma);
barisMatriksMax = barisMatriksMin + 1;

dBarisMatriksMin = abs (barisKoma - barisMatriksMin);
dBarisMatriksMax = abs (barisKoma - barisMatriksMax);

%round half down 0.0 0.1 0.2 0.3 0.4 0.5 dibulatkan ke  ke 0
%                0.6 0.7 0.8 0.9 1.0     dibulatkan ke  ke 1
if (dBarisMatriksMin > dBarisMatriksMax)
    barisMariks = barisMatriksMax;
elseif (dBarisMatriksMin < dBarisMatriksMax)
    barisMariks = barisMatriksMin;
else
    %saat dBarisMatriksMin = dBarisMatriksMax artinya 0.5 diposisi tengah
    %karena round half down maka dibulatkan kebawah yaitu
    %barisMatriksMin
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