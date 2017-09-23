
fileName = '/Users/lina/Desktop/dalian/two_object2/20170622_115445_00.mp4';   
obj = VideoReader(fileName);  
numFrames = obj.NumberOfFrames;% ????  
%??????????????  
if ~exist('/Users/lina/Desktop/dalian/two_object2/20170622_115445_00nowater1')  
     mkdir('/Users/lina/Desktop/dalian/two_object2/20170622_115445_00nowater1');  
end  
 for k = 1 : 300 :numFrames  
     frame = read(obj,k);% ????  
     %imshow(frame);%???  
     imwrite(frame,strcat('/Users/lina/Desktop/dalian/two_object2/20170622_115445_00nowater1/',sprintf('%04d.jpg',k)),'jpg');% ???  
     %?????0001.jpg?0002.jpg?...  
end  