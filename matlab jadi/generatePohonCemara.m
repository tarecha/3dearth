clear
hold on;
tanah = 0;
resolusi = 3;
yTengah = 0;
xTengah = 0;


dBatang = 0.5 / resolusi;
rBatang = dBatang / 2;
tinggi = tanah+3;
axis([-1 1 -1 1 0 6]);
axis vis3d;
view(-45,45);

%batang
xLandasan1 = [xTengah-rBatang xTengah+rBatang xTengah+rBatang xTengah-rBatang];
yLandasan1 = [yTengah yTengah yTengah yTengah ];
zLandasan1 = [tanah tanah tanah+tinggi tanah+tinggi ];
fill3(xLandasan1,yLandasan1,zLandasan1, [0.4 0.2 0.2]);
xLandasan1 = [xTengah xTengah xTengah xTengah];
yLandasan1 = [yTengah-rBatang yTengah+rBatang yTengah+rBatang yTengah-rBatang ];
zLandasan1 = [tanah tanah tanah+tinggi tanah+tinggi ];
fill3(xLandasan1,yLandasan1,zLandasan1, [0.4 0.2 0.2]);

%daun
xLandasan1 = [xTengah+rBatang xTengah+rBatang xTengah+(rBatang*2) xTengah+(rBatang*3) xTengah+(rBatang*4) xTengah+(rBatang*3) xTengah+(rBatang*2) xTengah+rBatang];
yLandasan1 = [yTengah yTengah+(rBatang/2) yTengah+rBatang yTengah+rBatang yTengah yTengah-rBatang yTengah-rBatang yTengah-(rBatang/2)];
zLandasan1 = [tanah+tinggi tanah+tinggi tanah+tinggi-0.1 tanah+tinggi-0.2 tanah+tinggi-0.3 tanah+tinggi-0.2 tanah+tinggi-0.1 tanah+tinggi];
fill3(xLandasan1,yLandasan1,zLandasan1, 'g');


derajat=90;
rotate = [cos(derajat) -sin(derajat); sin(derajat) cos(derajat)];
xy = [xLandasan1; yLandasan1];
xy = rotate * xy;
xLandasan2= xy(1,:);
yLandasan2 = xy(2,:);
fill3(xLandasan2,yLandasan2,zLandasan1, 'g');
