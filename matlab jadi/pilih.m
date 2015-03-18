function[A,baris,kolom] = pilih(baris, kolom, latitude, longitude)

%================================================
%{
             kolom
   1          1801          3601
   -------------------------- 1
   |          | |           |
   |   1      |6|     2     |
   |          | |           |
   --------------------------
   |   9      |5|     7     | 1801  baris
   --------------------------
   |          | |           |
   |   4      |8|     3     |
   |          | |           |
   -------------------------- 3601

    ukuran matrix 3601. titik tengah = (3601 + 1) / 2 = 1801
    posisi titik utama adalah 1 2 3 4
    posisi titik yang memungkinkan pas di tengah adalah 5 6 7 8 9


    A = | A1 A2 |
        | A4 A3 |
    

    file GDEM ASTER hanya memuat data elevasi, jika laut maka nilainya 0
    untuk wilayah 1 x 1 derajat yang 1 file semua merupakan laut maka file
    itu tidak disediakan. oleh karena itu file yang tidak ada maka wilayah
    laut diberi matrix 3601 x 3601 bernilai 0.
%}



%1
if (baris < 1801) && (kolom < 1801)
    fileA1 = generatefile(latitude+1, longitude-1);
    fileA2 = generatefile(latitude+1, longitude);
    fileA3 = generatefile(latitude, longitude);
    fileA4 = generatefile(latitude, longitude-1);
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
   
    A = [ A1 A2 ; A4 A3];
    baris = baris + 3601;
    kolom = kolom + 3601;
    
    
    %2
elseif (baris < 1801) && (kolom > 1801)
    
    fileA1 = generatefile(latitude+1, longitude);
    fileA2 = generatefile(latitude+1, longitude+1);
    fileA3 = generatefile(latitude, longitude+1);
    fileA4 = generatefile(latitude, longitude);
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    baris = baris + 3601;
    Aatas = [ A1 A2 ];
    
    Aatas = [ Aatas ; A4 A3];
    clear A1 A2 A3 A4;
    A = Aatas;
    
    
    %3
elseif (baris > 1801) && (kolom > 1801)
    fileA1 = generatefile(latitude, longitude);
    fileA2 = generatefile(latitude, longitude+1);
    fileA3 = generatefile(latitude-1, longitude+1);
    fileA4 = generatefile(latitude-1, longitude);
    
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    
    
    
    A = [ A1 A2 ; A4 A3];
    
    %4
elseif (baris > 1801) && (kolom < 1801)
    fileA1 = generatefile(latitude, longitude-1);
    fileA2 = generatefile(latitude, longitude);
    fileA3 = generatefile(latitude-1, longitude);
    fileA4 = generatefile(latitude-1, longitude-1);
    
    
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    A = [ A1 A2 ; A4 A3];
    kolom = kolom + 3601;
    
    %5
elseif (baris == 1801) && (kolom == 1801)
    fileA1 = generatefile(latitude+1, longitude-1);
    fileA2 = generatefile(latitude+1, longitude);
    fileA3 = generatefile(latitude, longitude);
    fileA4 = generatefile(latitude, longitude-1);
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    A = [ A1 A2 ; A4 A3];
    baris = baris + 3601;
    kolom = kolom + 3601;
    
    %6
elseif (baris < 1801) && (kolom == 1801)
    fileA1 = generatefile(latitude+1, longitude);
    fileA2 = generatefile(latitude+1, longitude+1);
    fileA3 = generatefile(latitude, longitude+1);
    fileA4 = generatefile(latitude, longitude);
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    baris = baris + 3601;
    A = [ A1 A2 ; A4 A3];
    %7
elseif (baris == 1801) && (kolom > 1801)
    fileA1 = generatefile(latitude, longitude);
    fileA2 = generatefile(latitude, longitude+1);
    fileA3 = generatefile(latitude-1, longitude+1);
    fileA4 = generatefile(latitude-1, longitude);
    
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    
    
    
    A = [ A1 A2 ; A4 A3];
    %8
elseif (baris > 1801) && (kolom == 1801)
    fileA1 = generatefile(latitude, longitude-1);
    fileA2 = generatefile(latitude, longitude);
    fileA3 = generatefile(latitude-1, longitude);
    fileA4 = generatefile(latitude-1, longitude-1);
    
    
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    A = [ A1 A2 ; A4 A3];
    kolom = kolom + 3601;
    %9
elseif (baris == 1801) && (kolom < 1801)
    fileA1 = generatefile(latitude+1, longitude-1);
    fileA2 = generatefile(latitude+1, longitude);
    fileA3 = generatefile(latitude, longitude);
    fileA4 = generatefile(latitude, longitude-1);
    
    if exist (fileA1, 'file') > 0
        A1 = geotiffread(fileA1);
    else
        A1 = zeros(3601,3601,'int16');
    end
    if exist (fileA2, 'file') > 0
        A2 = geotiffread(fileA2);
    else
        A2 = zeros(3601,3601,'int16');
    end
    if exist (fileA3, 'file') > 0
        A3 = geotiffread(fileA3);
    else
        A3 = zeros(3601,3601,'int16');
    end
    if exist (fileA4, 'file') > 0
        A4 = geotiffread(fileA4);
    else
        A4 = zeros(3601,3601,'int16');
    end
    
    A = [ A1 A2 ; A4 A3];
    baris = baris + 3601;
    kolom = kolom + 3601;
    
end
%bersihkan memory yang tidak digunakan
clearvars -except A baris kolom;
return