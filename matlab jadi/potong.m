% buat fungsi 
function[titikx,titiky] = potong(x, y)
x = abs(x);
y = abs(y);
xa = floor(x);
dx = x - xa;
px = 3601 * dx;
pxmin = floor(px);
pxmax = pxmin + 1;

dpxmin = abs (px - pxmin);
dpxmax = abs (px - pxmax);

if (dpxmin > dpxmax)
    titikx = pxmax;
elseif (dpxmin < dpxmax)
    titikx = pxmin;
else
    titikx = pxmin;
end


ya = floor(y);
dy = y - ya;

py = 3601 * dy;
pymin = floor(py);
pymax = pymin + 1;

dpymin = abs (py - pymin);
dpymax = abs (py - pymax);

if (dpymin > dpymax)
    titiky = pymax;
elseif (dpymin < dpymax)
    titiky = pymin;
else
    titiky = pymin;
end
return