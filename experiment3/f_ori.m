function [ret] = f_ori(E, w, tt)
    ret = E*tt/2*sinc(w*tt/2/pi);
