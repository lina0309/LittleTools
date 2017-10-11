% ?? the_image_to_read.jpg ???????? r g b ?
data=imread('/Users/lina/Desktop/val200/ADE_val_00000416.jpg');
imshow(data)
size(data)
[y, x] = ginput(1)
x = int32(x)
y = int32(y)
%plot(x,y,'*')
r=data(x,y,1)
g=data(x,y,2)
b=data(x,y,3)