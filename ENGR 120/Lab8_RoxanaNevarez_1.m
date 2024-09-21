%The purpose of this lab is to gain practice using loops to encode and
%decode a binary transmission, with possible errors created by noise.
%Created by Roxana Nevarez, 11/15/2021

%Below will contain the code for the first problem of lab 8: using the
%ASCII code to write the decimal representation of my first name. Since the
%letter 'a' is used twice, only one "a = 97" is needed for the code. Having
%this line of code once only prevents MATLAB from notifying that there is
%an error.
R = 82;
o = 111;
x = 120;
a = 97;
n = 110;
name_array = [82, 111, 120, 97, 110, 97];

%The following code (problem 2 of lab 8) will demonstrate the for loop
%needed to convert the name_array numbers into binary numbers using the
%letters as the inputs. Therefore, we need name = [R, o, x, a, n, a] and
%both functions (name and name_array) to be set equal to each other to
%indicate they are the same.
for name = [R, o, x, a, n, a]
    name = name_array;
    binStr = dec2bin(name);
end
%Displaying binStr shows 'Roxana' in binary numbers in a vertical order.
disp(binStr)
%%
%The following code (problem 3 of lab 8) demonstrates plugging in my binary
%name array into the noise function in order to receive a unique output.
%Nothing had to be adjusted to the noise function or the loop.
N = noise(binStr);
%N array changes every time the code runs. Demonstrates transmission was
%affected.
%%
%This for loop will convert the binary array back to a decimal array
for N = noise(binStr)
    N = noise(binStr);
    bin2Str = num2str(N);
    str2Dec = bin2dec(bin2Str);
end
%Note that bin2Str = num2str(binStr) was needed in order for the binary
%array to convert back into a decimal array.
%disp(str2Dec)reveals the decimal array (which was the same as the name
%array).
disp(str2Dec)
%output changes every time the code is run. Demonstrates transmission was
%affected.
%%
%Seeing that problem 4 of lab 8 never gives back the decimal values from
%part 1 of lab 8 (the name array), that indicates that the transmission was
%affected by the solar flare.
