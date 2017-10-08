function digits = digit_counter(filename)
    fid = fopen(filename, 'rt');
    if fid < 0
        digits = -1;
        %error('opening file: %s\n', filename);
        return;
    end
    digits = 0;
    oneline = fgets(fid);
    while ischar(oneline)
        isdigit = ismember(oneline, '0':'9');
        digits = digits + sum(isdigit);
        oneline = fgets(fid);
    end
    fclose(fid);
end