import os
import glob
for files in glob.glob("/Users/lina/Desktop/depthsmat/*.mat"):
    file_path,file_name=os.path.split(files)
    fin=file_name.split(".")
    name=fin[0]+"."+fin[2]
    os.rename(files,file_path+"/"+name)
#123.png.mat===>123.mat