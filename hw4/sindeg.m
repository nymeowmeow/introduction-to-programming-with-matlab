function [N, ave] = sindeg(M)
    N = sin(M.*(pi/180.0));
    ave = mean(N(:));