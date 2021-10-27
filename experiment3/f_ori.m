function [ret] = f_ori(E, w, tt)
    ret = E/2*(1 + cos(2*pi*w/tt));
