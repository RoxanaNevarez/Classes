%The purpose of this lab is to practice creating various plots for
%visualizing data in MATLAB.
%Created by Roxana Nevarez 9/27/21

%The code from lines 8-41 will demonstrate the work required to solve
%problem 1 of Lab 5.

%The code below will indicate what the gain of an inverting amplifier is.
%This value will be used in the function VoutT = A*VinT.
A = -2;

%The following code will create an interval of t = 0 to t = 10 with 100
%entries to make the functions look smooth when graphed.
t = linspace(0,10,100);

%The code below shows the two functions that will be plotted on the same
%graph.
VinT = 3*sin(t);
VoutT = A*VinT; 
%VoutT = A*VinT becomes VoutT = (-2)*VinT when the gain value replaces the 
%'A' variable. VoutT could also be written as VoutT = (-6)*sin(t) assuming
%that VinT is replaced with 3*sin(t)and 'A' is replaced with -2 (the 3 and 
%-2 multiply to become -6).

%The 'hold on' function will ensure that both functions will appear on the 
%same graph
hold on
%VinTPlot will plot the VinT function with a t interval of t = 0 to t = 10.
%The 'g:' character array will cause this function to be a green, dotted 
%line
VinTPlot = plot(t, VinT, 'g:');
%VoutTPlot will plot the VoutT function with a t interval of t = 0 to 
%t = 10. The 'b-' character array will cause this function to be a blue, 
%solid line
VoutTPlot = plot(t, VoutT, 'b-');

%The code below will incorporate a title for this graph and it will include
%a legend so viewers can correctly identify each line
title('Input and Output Voltage of an Inverting Amplifier with Gain -2');
legend('VinT', 'VoutT');
hold off

%The code from lines 46-96 will demonstrate the work required in order to 
%solve problem 2 of Lab 5

%The code below demonstrates the full file name in the imread() function in
%order to load the image.
image = imread("C:\Users\Roxan\OneDrive\Pictures & Videos\Earth.jpg"); 
%imshow(image) will display the picture loaded into MATLAB

%The code below will create the original image in grayscale. 
grayImage = rgb2gray(image);
%imshow(grayImage) will display the orginal image in grayscale

%The code below will create a cropped image of the original image.
%Lines 58-59 demonstrate how to find the width and length of the orginal
%image
width = size(image,2);
length = size(image,1);
%The width and length were calculated to be 416 each.

%The code on line 71 will result in the cropped image where 10% of each
%side of the orginal image is cropped.
%for the x-coordinate, x = 0.1*416, and that gave 41.6 (10% width).
%for the y-coordinate, y = 0.1*416, and that gave 41.6 (10% height).
%Given that we have to remove 10% of each side, that would result in
%finding 80% width and 80% height (since we have to remove 20% total for 
%height and 20% for width). Therefore we would have to do 416*0.8
%to find the new height and width of the cropped image. 416*0.8 results in
%332.8 for both height and width.
croppedImage = imcrop(image, [41.6 41.6 332.8 332.8]);

%The code below will store a new image in the blue and green
%components of the original image. Essentially, all red is removed.
xDim = size(image,1);
yDim = size(image,2);
zeroImage = zeros(xDim, yDim);
blueGreenImage = image;
blueGreenImage(:,:,1) = zeroImage;
redRemoved = blueGreenImage;

%The following code will create a subplot with all images properly labeled
%that contains the original image and all of the modified images. The
%subplots will be organized in a 2x2 grid.
subplot(2,2,1);
imshow(image);
title('Original Image')
subplot(2,2,2);
imshow(grayImage);
title('Gray Scaled Image')
subplot(2,2,3);
imshow(croppedImage);
title('Cropped Image')
subplot(2,2,4);
imshow(redRemoved);
title('Red-Removed Image')

%Below will include all of the code used for part 1 and part 2 of lab 5.

%Copy and paste lines 101-110 to see the graph for problem 1 of Lab 5.
A = -2;
t = linspace(0,10,100);
VinT = 3*sin(t);
VoutT = A*VinT; 
hold on
VinTPlot = plot(t, VinT, 'g:');
VoutTPlot = plot(t, VoutT, 'b-');
title('Input and Output Voltage of an Inverting Amplifier with Gain -2');
legend('VinT', 'VoutT');
hold off

%Copy and paste lines 113-135 to see the 2x2 grid for problem 2 of Lab 5.
image = imread('C:\Users\Roxana Nevarez\Pictures\Seattle.jpg');
grayImage = rgb2gray(image);
width = size(image,2);
length = size(image,1);
croppedImage = imcrop(image, [41.6 41.6 332.8 332.8]);
xDim = size(image,1);
yDim = size(image,2);
zeroImage = zeros(xDim, yDim);
blueGreenImage = image;
blueGreenImage(:,:,1) = zeroImage;
redRemoved = blueGreenImage;
subplot(2,2,1);
imshow(image);
title('Original Image')
subplot(2,2,2);
imshow(grayImage);
title('Gray Scaled Image')
subplot(2,2,3);
imshow(croppedImage);
title('Cropped Image')
subplot(2,2,4);
imshow(redRemoved);
title('Red-Removed Image')