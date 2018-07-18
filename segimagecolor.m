clear ;
close all ;
clc ;
read_path_depth = '/data/xiangyu.zhu/pingjun.li/test/full_body_depth_4_single_copy/';
store_path_s3 = '/data/xiangyu.zhu/pingjun.li/test/1/';
%store_path_m3 = '/data/xiangyu.zhu/pingjun.li/test/2/';
%store_path_l3 = '/data/xiangyu.zhu/pingjun.li/test/3/';
read_path_color = '/data/xiangyu.zhu/pingjun.li/test/full_body_color_4/';
ImageDir = dir(strcat(read_path_depth,'*.jpeg'));
LenDir = size(ImageDir,1);
%LenDir = size(ImageDir,1);
%img_name ='imagGB.jpg';
%img=imread(strcat(read_path,img_name));
for a = 1:LenDir
    img = imread(strcat(read_path_depth,ImageDir(a).name));
    imgcolor = imread(strcat(read_path_color,ImageDir(a).name));
    [h,w] = size(img) ;
    %img1=double(img);
    filter_1=zeros(h,w);
    filter_2=zeros(h,w);
    filter_3=zeros(h,w);
    for y=1:h
        for x=1:w
            if(img(y,x)==0)
                filter_1(y,x)=255;
                filter_2(y,x)=255;
                filter_3(y,x)=255;
            else
                imgcolor_1=imgcolor(:,:,1);
                imgcolor_2=imgcolor(:,:,2);
                imgcolor_3=imgcolor(:,:,3);
                filter_1(y,x) = imgcolor_1(y,x);
                filter_2(y,x) = imgcolor_2(y,x);
                filter_3(y,x) = imgcolor_3(y,x);
            %else
                %filter_m(y,x)=200;
            end
        end
    end
    %filter_s3=imread(strcat(read_path_color,ImageDir(a).name));
    filter_fin(:,:,1)=filter_1;
    filter_fin(:,:,2)=filter_2;
    filter_fin(:,:,3)=filter_3;
    
%     filter_m3=zeros(h,w,3);
%     filter_m3(:,:,1)=filter_m;
%     filter_m3(:,:,2)=filter_m;
%     filter_m3(:,:,3)=filter_m;
    
%     filter_l3=zeros(h,w,3);
%     filter_l3(:,:,1)=filter_l;
%     filter_l3(:,:,2)=filter_l;
%     filter_l3(:,:,3)=filter_l;
    %m=filter_s3(:,:,1);
    imwrite(uint8(filter_fin),strcat(store_path_s3,ImageDir(a).name));
%     imwrite(uint8(filter_m3),strcat(store_path_m3,ImageDir(a).name));
%     imwrite(uint8(filter_l3),strcat(store_path_l3,ImageDir(a).name));
end