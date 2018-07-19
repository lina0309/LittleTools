from pylab import *
import glob
from PIL import Image
import numpy as np
import os
# dict = {}
i=1
for filecolor in glob.glob("/data/xiangyu.zhu/pingjun.li/test/full_body_color_4/*.jpeg"):
    for files in glob.glob("/data/xiangyu.zhu/pingjun.li/test/full_body_depth_4/*.jpeg"):
        img_color_all = Image.open(filecolor)
        img_all = Image.open(files)
        # r=img.crop((640,0,1280,480))
        # l=img.crop((0,0,256,256))
        #r = img_all.crop((256, 0, 512, 256))
        #r_resize=r.resize((512,256),Image.ANTIALIAS)
        imgcolor = array(img_color_all)
        img = array(img_all)
        i=1+i
        print(i)
        for i in range(480):
            for j in range(640):
                if (np.abs(img[i, j, 0] == 0)):
                    imgcolor[i, j, 0] = 255
                    imgcolor[i, j, 1] = 255
                    imgcolor[i, j, 2] = 255
                #if (np.abs(img[i, j, 0] != 0) & np.abs(img[i, j, 1] != 0) & np.abs(img[i, j, 2]!=0)):
                #    img[i, j, 0] = imgcolor[i, j, 0]
                #    img[i, j, 1] = imgcolor[i, j, 1]
                #    img[i, j, 2] = imgcolor[i, j, 2]


        new_img=Image.fromarray(imgcolor,"RGB")
        p,n=os.path.split(files)
        new_img.save("/data/xiangyu.zhu/pingjun.li/test/testpysingle/"+n)