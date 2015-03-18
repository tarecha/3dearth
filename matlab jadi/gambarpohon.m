% ========================================================================
               % FUNGSI / PROSEDUR TO VISUALIZE VEGETATION
% ========================================================================

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%figure(handle_gambar_model);
hold on;

% Defining location of landmark
POHON = [  
            -7.991949   112.681659; ... %belakang rumah
            -7.991877   112.681446; ...
            -7.991832   112.681460; ...
            -7.991916   112.681379; ...
            -7.992316   112.681702; ...
            -7.992433   112.681398; ...
            -7.992587   112.681430; ...
            -7.992271   112.682170; ...
            -7.992215   112.682343; ...
            -7.992245   112.682383; ...
            -7.992226   112.682442; ...
            -7.992242   112.682600; ...
            -7.992457   112.682613;
        ]; 
KELAPA = [  
            -7.992128   112.681957; ... 
            -7.992051   112.681474; ...
            -7.992094   112.681347; ...
            -7.992088   112.681433; ...
            -7.992003   112.681368; ...
            -7.992166   112.682096; ...
            -7.992149   112.682022;
         ]; 

% Determining coordinate of the tree in the map based on minimal error
for baris=1:1:size(POHON,1)
    input_lat = POHON(baris,1);
    input_lon = POHON(baris,2);
    % finding latitude index from datalat
    error_lama = 100;
    index_lat = 1;
    for i=1:1:size(datalat,1)
        error_baru = abs(datalat(i,1)-input_lat);
        if error_baru < error_lama
            error_lama = error_baru;
            index_lat = i;
        end;
    end;
    % finding longitude index from datalon
    error_lama = 100;
    index_lon = 1;
    for j=1:1:size(datalon,1)
        error_baru = abs(datalon(j,1)-input_lon);
        if error_baru < error_lama
            error_lama = error_baru;
            index_lon = j;
        end;
    end;
    % Menggambar pohon
    pohon(index_lon,index_lat,datagrid(index_lat,index_lon),resolusi);
end;

% Determining coordinate of the palm tree in the map based on minimal error
for baris=1:1:size(KELAPA,1)
    input_lat = KELAPA(baris,1);
    input_lon = KELAPA(baris,2);
    % finding latitude index from datalat
    error_lama = 100;
    index_lat = 1;
    for i=1:1:size(datalat,1)
        error_baru = abs(datalat(i,1)-input_lat);
        if error_baru < error_lama
            error_lama = error_baru;
            index_lat = i;
        end;
    end;
    % finding longitude index from datalon
    error_lama = 100;
    index_lon = 1;
    for j=1:1:size(datalon,1)
        error_baru = abs(datalon(j,1)-input_lon);
        if error_baru < error_lama
            error_lama = error_baru;
            index_lon = j;
        end;
    end;
    % Menggambar pohon
    kelapa(index_lon,index_lat,datagrid(index_lat,index_lon),resolusi);
end;


% =========================================================================
% My own function to generate a tree
% =========================================================================
function pohon(a,b,c,d)
resolusi = d;
% Batang
tp = 7;           % tinggi pohon
lp = 0.5/resolusi; % lebar pohon

x3 = [-lp -lp*cos(pi/4) 0 lp*cos(pi/4) lp ...
       lp lp*cos(pi/4) 0 -lp*cos(pi/4) -lp];
y3 = [ 0 -lp*sin(pi/4) -lp -lp*sin(pi/4) 0 ...
       0 -lp*sin(pi/4) -lp -lp*sin(pi/4) 0 ];
z3 = [ 0 0 0 0 0 tp tp tp tp tp ];
fill3(x3+a,y3+b,z3+c,[0.4 0.2 0.2]);

x3 = [-lp -lp*cos(pi/4) 0 lp*cos(pi/4) lp ...
       lp lp*cos(pi/4) 0 -lp*cos(pi/4) -lp];
y3 = [0 lp*sin(pi/4) lp lp*sin(pi/4) 0 ...
      0 lp*sin(pi/4) lp lp*sin(pi/4) 0 ];
z3 = [ 0 0 0 0 0 tp tp tp tp tp ];
fill3(x3+a,y3+b,z3+c,[0.4 0.2 0.2]);

% Daun
ld = 4/resolusi; % lebar daun
td = 6; % tinggi daun = 3m

[x,y,z] = sphere(19);
ukuran = size(x,1)/2;
k=1;
x1 = zeros(size(x),size(x));
y1 = zeros(size(x),size(x));
z1 = zeros(size(x),size(x));

for j=ukuran:size(x)
    for i=1:size(x)
        x1(k,i) = x(j,i);
        y1(k,i) = y(j,i);
        z1(k,i) = z(j,i);
    end
    k=k+1;
end
surface(x1*ld+a,y1*ld+b,z1*td+c+tp,'FaceColor',[0.1 1 0.3],'EdgeColor','none');
%fill3(x1(:,1:2)*ld+a,y1(:,1:2)*ld+b,z1(:,1:2)*td+c+tp,'g');

% =========================================================================
% My own function to generate a palm tree (pohon kelapa)
% =========================================================================
function kelapa(a,b,c,d)
resolusi = d;
% Batang
tp = 10;           % tinggi pohon
lp = 0.5/resolusi; % lebar pohon

x3 = [-lp -lp*cos(pi/4) 0 lp*cos(pi/4) lp ...
       lp lp*cos(pi/4) 0 -lp*cos(pi/4) -lp];
y3 = [ 0 -lp*sin(pi/4) -lp -lp*sin(pi/4) 0 ...
       0 -lp*sin(pi/4) -lp -lp*sin(pi/4) 0 ];
z3 = [ 0 0 0 0 0 tp tp tp tp tp ];
fill3(x3+a,y3+b,z3+c,[0.4 0.2 0.2]);

x3 = [-lp -lp*cos(pi/4) 0 lp*cos(pi/4) lp ...
       lp lp*cos(pi/4) 0 -lp*cos(pi/4) -lp];
y3 = [0 lp*sin(pi/4) lp lp*sin(pi/4) 0 ...
      0 lp*sin(pi/4) lp lp*sin(pi/4) 0 ];
z3 = [ 0 0 0 0 0 tp tp tp tp tp ];
fill3(x3+a,y3+b,z3+c,[0.4 0.2 0.2]);

% Daun
ld = 4/resolusi; % lebar daun
td = 4; % tinggi daun = 3m

[x,y,z] = sphere(19);
ukuran = size(x,1)/2;
k=1;
for j=ukuran:size(x)
    for i=1:size(x)
        x1(k,i) = x(j,i);
        y1(k,i) = y(j,i);
        z1(k,i) = z(j,i);
    end
    k=k+1;
end
fill3(x1*ld+a,y1*ld+b,z1*td+c+(tp-td),'g');