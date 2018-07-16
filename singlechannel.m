clc;
clear;
close all;
ImagePath = '/home/ouc/data/lina-exp/20180121/results/20180205/merge3/testchoosewater/re/';
ResultPath = '/home/ouc/data/lina-exp/20180121/results/20180205/merge3/testchoosewater/redan/';
ImageDir = dir(strcat(ImagePath,'*.png'));
LenDir = size(ImageDir,1);
for a = 1:LenDir
    RGB=imread(strcat(ImagePath,ImageDir(a).name));
    b = RGB(:,:,1);
    imwrite(b, strcat(ResultPath,ImageDir(a).name));
end