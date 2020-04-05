%% Title: Amended Landweber Algorithm for Image Deblurring

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen and Ghazali Sulong. 
% "Deblurring computed tomography medical images using a novel amended Landweber algorithm." 
% Interdisciplinary Sciences: Computational Life Sciences, vol. 7, no. 3, (2015): pp. 319-325. DOI: 10.1007/s12539-015-0022-1
%% INPUTS
% x --> is a given blurry image
% y --> controls the amount of provided sharpness
% itr -- > number of iterations

%% OUTPUT
% x2 --> deblurred image


%% Starting implementation %%
clear all; close all; clc;

x = im2double(imread('BlurryCT.jpg'));
figure, imshow(x), title('Blurry')

PSF =  fspecial('gaussian', [9 9], 2);

y=10; itr = 100; 
tic; x2=ALW(x, PSF, y, itr); toc;
figure, imshow(x2), title('Restored by ALW')
% imwrite(x2, 'out_ALW.jpg')