#!/usr/bin/env python


import glob
import os
import shutil
import time
import numpy as np
from PIL import Image
def choose_and_rename(fpath_input1,fpath_input2, fpath_output):
    for file1 in os.listdir(fpath_input1):
        for file2 in os.listdir(fpath_input2):

            filename1 = os.path.splitext(file1)[0]
            filename2 = os.path.splitext(file2)[0]
            oldname1 = filename1[:5]
            oldname2 = filename2[:5]
            # shutil.copyfile(oldname, newname_0)
            if  oldname1== oldname2:
                newname_1 = os.path.join(fpath_output,
                                      os.path.splitext(file1)[0] + "blue.png")

                shutil.copy(fpath_input1+file1, fpath_output)
if __name__ == '__main__':
    print('start ...')
    t1 = time.time() * 1000
    # time.sleep(1) #1s
    fpath_input1 = "/home/ouc/data/lina-exp/1127/9000/3/"
    fpath_input2 = "/home/ouc/data/test/test_colors/"
    fpath_output = "/home/ouc/data1/lina/20180320/pix2pix-dataset/cyclenew/test/merge3/"
    choose_and_rename(fpath_input1,fpath_input2, fpath_output)
    t2 = time.time() * 1000
    print('take time:' + str(t2 - t1) + 'ms')
    print('end.')



