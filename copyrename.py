#! /usr/bin/env python
# coding=utf-8
import os
import shutil
import time
import sys
os.environ["CUDA_VISIBLE_DEVICES"] = "3"


def copy_and_rename(fpath_input, fpath_output):

    for file in os.listdir(fpath_input):

        oldname = os.path.join(fpath_input, file)

        newname_0 = os.path.join(fpath_output,os.path.splitext(file)[0] + "white.png")
        filename = os.path.splitext(file)[0]
        shutil.copyfile(oldname, newname_0)



if __name__ == '__main__':
    print('start ...')
    t1 = time.time() * 1000
    #time.sleep(1) #1s
    fpath_input = "/home/ouc/data1/lina/20180320/pix2pix-dataset/cyclenew/train/color44/"
    fpath_output = "/home/ouc/data1/lina/20180320/pix2pix-dataset/cyclenew/train/color444/"
    copy_and_rename(fpath_input, fpath_output)
    t2 = time.time() * 1000
    print('take time:' + str(t2 - t1) + 'ms')
    print('end.')