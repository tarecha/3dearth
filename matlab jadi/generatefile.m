function[filename] = generatefile(latitude,longitude)
%{
        format nama file ASTGTM2_S07E109_dem.tif
        ASTER versi 1 = ASTGTM
        ASTER versi 2 = ASTGTM2
        jika dikemudian hari dirilis ASTER Versi 3 cukup merubah
        isi file tarecha.xdf untuk header nama file.
        tidak perlu compile ulang, cukup ganti dengan ASTER Versi 3.
        kemungkinan
        ASTER versi 3 = ASTGTM3
%}
header = 'C:\maps\tarecha.xdf';
if exist (header, 'file')
    nama1 = fileread(header);
else
    nama1 = 'ASTGTM2_';
end
nama2 = '_dem.tif';


%karena bentuk bumi bulat jika butuh file 180 maka filenya -179
%dan sebaliknya butuh file -180 maka filenya 179
if(longitude >= 180)
    longitude = (longitude - 1) * -1;
elseif (longitude <= -180)
    longitude = (longitude + 1)*-1;
end


if(latitude<0)
    numlatitude = floor(abs(latitude)) + 1;
else
    numlatitude = floor(abs(latitude));
end;
if(longitude<0)
    numlongitude = floor(abs(longitude)) + 1;
else
    numlongitude = floor(abs(longitude));
end;

if ( latitude < 0)
    strlatitude = 'S';
else
    strlatitude = 'N';
end



if ( longitude >= 0 )
    strlongitude = 'E';
else
    strlongitude = 'W';
end


%format nomor file latitude
if (numlatitude < 10)
    strnumlatitude = num2str(numlatitude);
    strnumlatitude = strcat('0',strnumlatitude);
else
    strnumlatitude = num2str(numlatitude);
end

%format nomor file longitude
if (numlongitude < 10)
    strnumlongitude = num2str(numlongitude);
    strnumlongitude = strcat('00',strnumlongitude);
elseif (numlongitude < 100)
    strnumlongitude = num2str(numlongitude);
    strnumlongitude = strcat('0',strnumlongitude);
else
    strnumlongitude = num2str(numlongitude);
end

filename = strcat('C:\maps\',nama1,strlatitude,strnumlatitude,strlongitude,strnumlongitude,nama2);
return