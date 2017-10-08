function res = integerize(A)
    if all(int8(A) == A),
        res = 'int8';
    elseif all(int16(A) == A)
        res = 'int16';
    elseif all(int32(A) == A)
        res = 'int32';
    elseif all(int64(A) == A)
        res = 'int64';
    else
        res = 'NONE';
    end     
end