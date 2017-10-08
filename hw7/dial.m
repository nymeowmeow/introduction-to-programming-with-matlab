function phone = dial(in)
    lookup = struct('A',2, 'B',2, 'C', 2, 'D', 3, 'E',3, 'F', 3, ...
        'G', 4, 'H', 4, 'I', 4, 'J', 5, 'K', 5, 'L', 5, 'M', 6, 'N', 6, 'O', 6, ...
        'P', 7, 'Q', 7, 'R', 7, 'S', 7, 'T', 8, 'U', 8, 'V', 8, 'W', 9, 'X', 9, ...
        'Y', 9, 'Z', 9);
    phone = '';
    for i=1:length(in),
        if ~isempty(strfind('1234567890', in(i)))
            phone = [ phone,  in(i) ];
        else
            try
                v = num2str(getfield(lookup, in(i)));
            catch
                phone = uint64(0);
                return;
            end
            phone = [ phone , v ];
        end
    end
    phone = uint64(str2num(phone));
end