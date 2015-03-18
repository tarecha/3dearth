function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 10-Aug-2013 10:26:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using gui.
if strcmp(get(hObject,'Visible'),'off')
    plot(rand(5));
end

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla;
rotate3d on;
nama = 'Gunung Panderman';
% latitude =-7.904006;
% longitude=112.4965;


interpolasi='2';  
%{
    keterangan interpolasi 
    0 = interval 30 m
    1 = interval 15 m
    2 = interval 7.5 m
    3 = interval 3.75 m
%}
pohon='1';
format longG;
batasRadius = 500;
A = geotiffread('ASTGTM2_S08E112_dem.tif');
batasTepi = 'C:\maps\batasTepi.csv';
if exist (batasTepi, 'file')
    databatasTepi=importdata(batasTepi,',');
    if not(isempty(databatasTepi))            
        latitude1 = databatasTepi(1,1);
        longitude1 = databatasTepi(1,2);
        latitude2= databatasTepi(2,1);
        longitude2= databatasTepi(2,2);
    end;
end;
f =handles.axes1;
axes(f);
[tengahLatitude,tengahLongitude,rLatitude,rLongitude,statusPotong] = normalisasi(latitude1 , longitude1, latitude2, longitude2, batasRadius);
radiusBaris = rLatitude;
radiusKolom = rLongitude;
latitude = tengahLatitude;
longitude = tengahLongitude;
ukuran_baris = radiusBaris * 2 + 1;
ukuran_kolom = radiusKolom * 2 + 1;
luas = ((ukuran_baris-1)*30)*((ukuran_kolom-1)*30);

[barisKoma, kolomKoma] = mapping(latitude,longitude);

[barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);

%fungsi pilih untuk memilih 4 ubin terdekat.
%jika menggunakan fungsi pilih() tempatkan file aster pada c:\maps\
%[A, baris, kolom] =  pilih(barisMatriks, kolomMatriks, latitude, longitude);
kolom = kolomMatriks;
baris = barisMatriks;
ztitik=A(baris, kolom); %ketinggian pada titik tengah
d1 = baris - radiusBaris - 1;
d2 = kolom - radiusKolom - 1;
b = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
    for j=1:ukuran_kolom
        b(i,j) = A(i+d1,j+d2);
    end
end

%clear A; %variable A menyimpan matrik besar lalu di clear kan


b = flipud(b);



zutara = b((radiusBaris*2+1),(radiusKolom+1));
if strcmp(interpolasi, '1')%pemilihan interpolasi
    interval = 15;
    kolomUtara = (radiusKolom+1)*2-1;
    barisUtara = (radiusBaris*2+1)*2-1;
    kolomTengah = (radiusKolom+1)*2-1;
    barisTengah = (radiusBaris+1)*2-1;
    ukuran_kolom = ukuran_kolom *2-1;
    ukuran_baris = ukuran_baris *2-1;
    b = interpolasiLinier(b);
elseif strcmp(interpolasi, '2')%pemilihan interpolasi
    interval = 7.5;
    kolomUtara = ((radiusKolom+1)*2-1)*2-1;
    barisUtara = ((radiusBaris*2+1)*2-1)*2-1;
    kolomTengah = ((radiusKolom+1)*2-1)*2-1;
    barisTengah = ((radiusBaris+1)*2-1)*2-1;
    ukuran_kolom = (ukuran_kolom *2-1)*2-1;
    ukuran_baris = (ukuran_baris *2-1)*2-1;
    b = interpolasiLinier(b);
    b = interpolasiLinier(b);
elseif strcmp(interpolasi, '3')%pemilihan interpolasi
    interval = 3.75;
    kolomUtara = (((radiusKolom+1)*2-1)*2-1)*2-1;
    barisUtara = (((radiusBaris*2+1)*2-1)*2-1)*2-1;
    kolomTengah = (((radiusKolom+1)*2-1)*2-1)*2-1;
    barisTengah = (((radiusBaris+1)*2-1)*2-1)*2-1;
    ukuran_kolom = ((ukuran_kolom *2-1)*2-1)*2-1;
    ukuran_baris = ((ukuran_baris *2-1)*2-1)*2-1;
    b = interpolasiLinier(b);
    b = interpolasiLinier(b);   
    b = interpolasiLinier(b);  
else %interpolasi = 0
    interval = 30;
    kolomUtara = radiusKolom+1;
    barisUtara = radiusBaris*2+1;
    kolomTengah = radiusKolom+1;
    barisTengah = radiusBaris+1;
    
end;
errorlog='';

try
   opengl hardware;
   set(0,'DefaultFigureRenderer','opengl');
   set(gcf, 'renderer', 'opengl');
catch excep
     errorlog = excep.message;
end




scatter3(kolomTengah, barisTengah, ztitik+10,100,'k','o','filled');
hold on;
scatter3(kolomUtara, barisUtara, zutara+10,100,'m','o','filled');
hold on;
mesh(b);
axis off;
hold off;
zmin = min(min(b));
zmax = max(max(b));
cm = colormap('jet');
%permukaan laut 0, jika <=0 warna diganti putih
if (zmin<=0)
    cm(1,:)= [1 1 1];
end;
colormap(cm);

%nilai permukaan laut 0
if ((zmax-zmin)>0)
    if(ukuran_baris >= ukuran_kolom)
        ukuran_tinggi = ukuran_baris;
    else
        ukuran_tinggi = ukuran_kolom;
    end;
    
    axis([1 ukuran_tinggi 1 ukuran_tinggi 0 ((ukuran_tinggi-1)*interval)-1]);
    axis vis3d;
    axis([1 ukuran_kolom 1 ukuran_baris zmin zmax]);
end;
title(nama, 'FontSize',13);

jumlahPohon = 0;
%membuat pohon===============================================================================================================
%fitur tambahan untuk memperjelas manfaat interpolasi
if strcmp(pohon, '1')
    [latC,longC]=mappingMatrixtoNearestCoordinat(barisMatriks, kolomMatriks, latitude,longitude);
    [latKecilMin,latKecilMax,longKecilMin,longKecilMax] = batasMatrixKecil(latC, longC, radiusBaris, radiusKolom,interval);
    
    
    filePohonBeringin = 'C:\maps\pohonBeringin.csv';
    if exist (filePohonBeringin, 'file')
        dataPohonBeringin=importdata(filePohonBeringin,',');
        if not(isempty(dataPohonBeringin))
            jum_pohon = size(dataPohonBeringin);
            for i=1:jum_pohon
                latitudePohon = dataPohonBeringin(i,1);
                longitudePohon = dataPohonBeringin(i,2);
                %seleksi apakah letak pohon masih dalam area visualisasi
                if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
                    [barisKomaPohon,kolomKomaPohon] = mappingObjek(latitudePohon, longitudePohon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom);
                    [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon);
                    tinggiPohon = b(barisMatriksPohon,kolomMatriksPohon);
                    generatePohon(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
                    jumlahPohon = jumlahPohon + 1;
                end;
                
            end;
        end;
    end;
    
    filePohonKelapa = 'C:\maps\pohonKelapa.csv';
    if exist (filePohonKelapa, 'file')
        dataPohonKelapa=importdata(filePohonKelapa,',');
        if not(isempty(dataPohonKelapa))
            jum_pohon = size(dataPohonKelapa);
            for i=1:jum_pohon
                latitudePohon = dataPohonKelapa(i,1);
                longitudePohon = dataPohonKelapa(i,2);
                %seleksi apakah letak pohon masih dalam area visualisasi
                if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
                    [barisKomaPohon,kolomKomaPohon] = mappingObjek(latitudePohon, longitudePohon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom);
                    [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon);
                    tinggiPohon = b(barisMatriksPohon,kolomMatriksPohon);
                    generatePohonKelapa(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
                    jumlahPohon = jumlahPohon + 1;
                end;
                
            end;
        end;
    end;
end;

clear b;
clear dataPohonBeringin;
clear dataPohonKelapa;

%informasi memory yang digunakan
[usr, sys] = memory;
memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
infoMemory  = strcat('Used : ',num2str(memMATLAB),' MB,  Available : ',num2str(memPhyAvailable),' MB, Total : ' ,num2str(memPhyTotal),' MB');




% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

set(hObject, 'String', {'plot(rand(5))', 'plot(sin(1:0.01:25))', 'bar(1:.5:10)', 'plot(membrane)', 'surf(peaks)'});
