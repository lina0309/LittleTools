# -*- coding:utf-8 -*-
# from os.path import splitext
import glob
from PIL import Image
import os 
# def get_all_file(filename):
#     files = glob.glob(filename)
#     return files
 
# def to_ather_file(files, type):
#     for png in files:
#         im = Image.open(png)
#         jpg = splitext(png)[0]+"." + type
#         im.save(jpg)
#         print jpg 

def del_files(path):
    for root , dirs, files in os.walk(path):
        for name in files:
            if name.endswith(".png"):
                os.remove(os.path.join(root, name))
		print ("Delete File: " + os.path.join(root, name))
 
if __name__ == "__main__":
    # filename = "/Users/lina/Desktop/air256256jpg/air*.png"
    # files = get_all_file(filename)
    # to_ather_file(files, "jpg")
    path = '/Users/lina/Desktop/fake256256jpg'
    del_files(path)