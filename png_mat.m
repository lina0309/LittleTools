clc;
clear;
close all;
ImagePath = '/Users/lina/Desktop/depthsall/'
ResultPath = '/Users/lina/Desktop/depthsmat/'
ImageDir = dir(strcat(ImagePath,'*.png'));
%ImageDir1 = dir(ImagePath,'*.png');
LenDir = size(ImageDir,1);
for i = 1:LenDir
    a=imread(strcat(ImagePath,ImageDir(i).name));
    savePath = [ResultPath ImageDir(i).name '.mat'];
    save(savePath,'a')
end 

