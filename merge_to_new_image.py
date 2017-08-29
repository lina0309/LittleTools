#coding: utf-8
import os 
import numpy as np
from PIL import Image 
for i in range(64):
	for j in range(62):
		root='/Users/lina/Desktop/results20170826/'
		l_name=root+'air_25_'+str(i).zfill(2)+'_'+str(j).zfill(2)+'.png'
		l=Image.open(l_name)
		l_re=l.resize((256,256),Image.ANTIALIAS)
		r_name=root+'fake_25_'+str(i).zfill(2)+'_'+str(j).zfill(2)+'.png'
		r=Image.open(r_name)
		r_re=r.resize((256,256),Image.ANTIALIAS)
		target=Image.new("RGB",(512,256))
		target.paste(l_re,(0,0,256,256))
		target.paste(r_re,(256,0,512,256))
		target.save('/Users/lina/Desktop/2/'+str(i+10*j)+'.png')
