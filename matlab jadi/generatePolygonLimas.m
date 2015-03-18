function generatePolygonLimas( barisTengah, kolomTengah, tinggi, figur)
figure(figur);
hold on;
tinggi=tinggi+2;
xLandasan1 = [barisTengah-0.7 barisTengah-0.7 barisTengah+0.7 barisTengah+0.7 ];
yLandasan1 = [kolomTengah-0.7 kolomTengah+0.7 kolomTengah+0.7 kolomTengah-0.7 ];
zLandasan1 = [tinggi tinggi tinggi tinggi ];


xLandasan2 = [barisTengah+0.5 barisTengah barisTengah+0.5 ] ;
yLandasan2 = [kolomTengah-0.5 kolomTengah kolomTengah+0.5 ] ;
zLandasan2 = [tinggi tinggi+15 tinggi];


xLandasan3 = [barisTengah+0.5 barisTengah barisTengah-0.5 ] ;
yLandasan3 = [kolomTengah+0.5 kolomTengah kolomTengah+0.5 ] ;
zLandasan3 = [tinggi tinggi+15 tinggi ];


xLandasan4 = [barisTengah-0.5 barisTengah barisTengah-0.5 ] ;
yLandasan4 = [kolomTengah+0.5 kolomTengah kolomTengah-0.5 ] ;
zLandasan4 = [tinggi tinggi+15 tinggi ];


xLandasan5 = [barisTengah-0.5 barisTengah barisTengah+0.5 ] ;
yLandasan5 = [kolomTengah-0.5 kolomTengah kolomTengah-0.5 ] ;
zLandasan5 = [tinggi tinggi+15 tinggi ];
fill3(xLandasan1,yLandasan1,zLandasan1,'r',xLandasan2,yLandasan2,zLandasan2,'g',xLandasan3,yLandasan3,zLandasan3,'g',xLandasan4,yLandasan4,zLandasan4,'g',xLandasan5,yLandasan5,zLandasan5,'g');
return
