clear ;
close all ;
clc ;
read_path = '/home/ouc/data/lina-exp/NYU795-654/test/' ;
store_path_s3 = '/home/ouc/data/lina-exp/NYU795-654/test/1/' ;
store_path_m3 = '/home/ouc/data/lina-exp/NYU795-654/test/2/' ;
store_path_l3 = '/home/ouc/data/lina-exp/NYU795-654/test/3/' ;
ImageDir = dir(strcat(read_path,'*.jpg'));
LenDir = size(ImageDir,1);
%LenDir = size(ImageDir,1);
%img_name ='imagGB.jpg';
%img=imread(strcat(read_path,img_name));
for a = 1:LenDir
    img = imread(strcat(read_path,ImageDir(a).name));
    [h,w] = size(img) ;
    img1=double(img);
    filter_s=zeros(h,w);
    filter_m=zeros(h,w);
    filter_l=zeros(h,w);
    for y=1:h
        for x=1:w
            if(img1(y,x)<150)
                filter_l(y,x)=150;
            elseif(img1(y,x)>200)
                filter_s(y,x)=250;
            else
                filter_m(y,x)=200;
            end
        end
    end
    filter_s3=zeros(h,w,3);
    filter_s3(:,:,1)=filter_s;
    filter_s3(:,:,2)=filter_s;
    filter_s3(:,:,3)=filter_s;
    
    filter_m3=zeros(h,w,3);
    filter_m3(:,:,1)=filter_m;
    filter_m3(:,:,2)=filter_m;
    filter_m3(:,:,3)=filter_m;
    
    filter_l3=zeros(h,w,3);
    filter_l3(:,:,1)=filter_l;
    filter_l3(:,:,2)=filter_l;
    filter_l3(:,:,3)=filter_l;
    m=filter_s3(:,:,1);
    imwrite(uint8(filter_s3),strcat(store_path_s3,ImageDir(a).name));
    imwrite(uint8(filter_m3),strcat(store_path_m3,ImageDir(a).name));
    imwrite(uint8(filter_l3),strcat(store_path_l3,ImageDir(a).name));
end
