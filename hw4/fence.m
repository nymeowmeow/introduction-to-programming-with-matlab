function [segs, poles] = fence(lng, seglng)
    segs = ceil(lng/seglng);
    poles = segs + 1;