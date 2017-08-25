# -*- coding:utf-8 -*-
# 图片拼接
import PIL.Image as Image
import os, sys

mw = 640 # 图片大小+图片间隔
ms = 5#列
mh = 7#行
msize1 = mw * ms
msize2 = mw * mh

fpre = "x" #图片前缀
toImage = Image.new('RGBA', (msize1, msize2))

for y in range(1, 8):  
    for x in range(1, 6):

        # 之前保存的图片是顺序命名的，x_1.jpg, x_2.jpg ...
        #fname = "fake_25_%s_00.png" % (ms*(y-1)+x)
        fname = "/Users/lina/Desktop/te/%s.png" % (ms*(y-1)+x)
        print (ms*(y-1)+x)
        fromImage = Image.open(fname)
        fromImage =fromImage.resize((mw, mw), Image.ANTIALIAS)   # 先拼的图片缩小

        toImage.paste(fromImage, ((x-1) * mw, (y-1) * mw))
        print (x-1) * mw
        print (y-1) * mw
toImage.save('/Users/lina/Desktop/automatedMSRCR_orignal.png')
