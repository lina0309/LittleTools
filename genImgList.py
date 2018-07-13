import os

imdir = '/data/image/'
imglist = os.listdir(imdir)

with open('test_ceshen.txt', 'w') as f:
    for i in range(len(imglist)):
        f.write(imdir+imglist[i]+'\n')