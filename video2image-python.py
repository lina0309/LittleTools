
import cv2

vc = cv2.VideoCapture('/data/xiaobing.wang/pingjun.li/LiNa/PoseEstimation/rgbd-pose3d-master/upper_body_depth_1.avi')
c = 1
if vc.isOpened():
    rval, frame = vc.read()
else:
    rval = False
timeF = 1
while rval:
    rval, frame = vc.read()
    if (c % timeF == 0):
        cv2.imwrite('upper_body_depth_1/' + str(c) + '.jpeg', frame)
    c = c + 1
    cv2.waitKey(1)
vc.release()

