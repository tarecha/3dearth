clear all;
barisTengah = 2;
kolomTengah = 2;
xLandasan1 = [barisTengah-0.7 barisTengah-0.7 barisTengah+0.7 barisTengah+0.7 ];
yLandasan1 = [kolomTengah-0.7 kolomTengah+0.7 kolomTengah+0.7 kolomTengah-0.7 ];
zLandasan1 = [1 1 1 1 ];
% fill3(xLandasan,yLandasan,zLandasan,'k');
 hold on;
axis([1 2.5 1 2.5 1 2.5])
axis vis3d;
xLandasan2 = [barisTengah+0.5 barisTengah barisTengah+0.5 ] ;
yLandasan2 = [kolomTengah-0.5 kolomTengah kolomTengah+0.5 ] ;
zLandasan2 = [1 2 1 ];
% fill3(xLandasan,yLandasan,zLandasan,'g');

xLandasan3 = [barisTengah+0.5 barisTengah barisTengah-0.5 ] ;
yLandasan3 = [kolomTengah+0.5 kolomTengah kolomTengah+0.5 ] ;
zLandasan3 = [1 2 1 ];
% fill3(xLandasan,yLandasan,zLandasan,'g');

xLandasan4 = [barisTengah-0.5 barisTengah barisTengah-0.5 ] ;
yLandasan4 = [kolomTengah+0.5 kolomTengah kolomTengah-0.5 ] ;
zLandasan4 = [1 2 1 ];
% fill3(xLandasan,yLandasan,zLandasan,'g');

xLandasan5 = [barisTengah-0.5 barisTengah barisTengah+0.5 ] ;
yLandasan5 = [kolomTengah-0.5 kolomTengah kolomTengah-0.5 ] ;
zLandasan5 = [1 2 1 ];
fill3(xLandasan1,yLandasan1,zLandasan1,'g',xLandasan2,yLandasan2,zLandasan2,'r',xLandasan3,yLandasan3,zLandasan3,'y',xLandasan4,yLandasan4,zLandasan4,'b',xLandasan5,yLandasan5,zLandasan5,'m');
% xLandasan = [barisTengah+0.5 barisTengah barisTengah+0.5 barisTengah+0.5 barisTengah-0.5 barisTengah barisTengah-0.5 barisTengah-0.5 barisTengah barisTengah-0.5 barisTengah+0.5 barisTengah];
% yLandasan = [kolomTengah-0.5 kolomTengah kolomTengah+0.5 kolomTengah-0.5 kolomTengah-0.5 kolomTengah kolomTengah-0.5 kolomTengah+0.5 kolomTengah kolomTengah+0.5 kolomTengah+0.5 kolomTengah];
% zLandasan = [1 2 1 1 1 2 1 1 2 1 1 2];
