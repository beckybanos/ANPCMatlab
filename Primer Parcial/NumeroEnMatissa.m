% Como calcular número en matissa

% s = '3f847ae147ae147b'; 
s = '4059000000000000'; 
disp(s(1));
disp(hex2dec(s(1)));
disp(hex2dec(s(2)));

%f = s(4:16);
f = s(4:end);
disp(f);
i = 1:1:13;
disp(i);
v = 16.^i;
disp(v);