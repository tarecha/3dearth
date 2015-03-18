function[b] = interpolasi(a)
[m,n] = size(a);
b = zeros(m*2-1,n*2-1);
for i=1:m
  for j=1:n
   
      b(i*2-1,j*2-1)=a(i,j);
      if i<m 
           b(i*2,j*2-1)=(a(i,j)+a(i+1,j))/2; 
      end;
      if j<n
           b(i*2-1,j*2)=(a(i,j)+a(i,j+1))/2;
      end;
      if i<m && j<n
          b(i*2,j*2)=(a(i,j)+a(i+1,j+1)+a(i+1,j)+a(i,j+1))/4;
       end;
  end;  
end;

return
