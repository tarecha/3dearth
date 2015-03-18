
function zcm = ColorMap(zmin,zmax,z)

zcm = 1 + (z-zmin)*(63/(zmax-zmin));




return