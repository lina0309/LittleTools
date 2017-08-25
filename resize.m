clc;
clear;
close all;
ImagePath = '/Users/lina/lina/train_depths/'
ResultPath = '/Users/lina/Desktop/depthsall/'
ImageDir = dir(strcat(ImagePath,'*.png'));
LenDir = size(ImageDir,1);
for i = 1:LenDir
    a=imread(strcat(ImagePath,ImageDir(i).name));
    b=imresize(a,[480,640]);
    imwrite(b,strcat(ResultPath,ImageDir(i).name));
end
%imshow(b);
%c=rgb2gray(b)
%imwrite(c,'246.jpg');
%imshow(c);