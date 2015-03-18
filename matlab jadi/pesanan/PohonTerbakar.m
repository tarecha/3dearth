function PohonTerbakar( baris, kolom, tinggi, resolusi, figur)
a = kolom;
b = baris;
c = tinggi;
figure(figur);
hold on;

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
ld = 2/resolusi; % lebar daun
td = 4; % tinggi daun = 3m

[x,y,z] = sphere(19);
ukuran = size(x,1)/4;
k=2;
for j=ukuran:size(x)
    for i=1:size(x)
        x1(k,i) = x(j,i);
        y1(k,i) = y(j,i);
        z1(k,i) = z(j,i);
    end
    k=k+2;
    
end
fill3(x1*ld+a,y1*ld+b,z1*td+c+(tp-td),'g');



return
