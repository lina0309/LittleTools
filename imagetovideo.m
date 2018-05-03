temp1='/home/ouc/data/lina-exp/Neurocomputing/frcn/tensorflow/12mindepthmerge/';% 路径名1
temp2='_merge.jpg';% 路径名2
WriterObj=VideoWriter('12minmergenew-frcn-test');% xxx.avi表示待合成的视频（不仅限于avi格式）的文件路径
open(WriterObj);
n_frames = 21510;
for i=1:n_frames % n_frames表示图像帧的总数
frame=imread(strcat(temp1,num2str(sprintf('%08d',i)),temp2));% 读取图像，放在变量frame中
writeVideo(WriterObj,frame);% 将frame放到变量WriterObj中
end
close(WriterObj);