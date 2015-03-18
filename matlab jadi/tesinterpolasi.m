 header = 'C:\maps\pohonBerinsdsdgin.xlsx'; 
   if exist (header, 'file')
       nama1 = 'aa'
   else
       nama1 = 'ASTGTM2_'
   end
fs=xlsread(header)
not(isempty(fs))
      