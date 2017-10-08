function value = centuries(year)
    if ~isscalar(year) || year > 3000 || year <= 0 || fix(year) ~= year
        value = '';
        return;
    end
    century = idivide(int32(year), int32(100), 'ceil');
    cents = { 'I'; 'II'; 'III'; 'IV'; 'V'; 'VI'; 'VII'; 'VIII'; 'IX'; 'X'; ...
        'XI'; 'XII'; 'XIII'; 'XIV'; 'XV'; 'XVI'; 'XVII'; 'XVIII'; 'XIX'; 'XX'; ...
        'XXI'; 'XXII'; 'XXIII'; 'XXIV'; 'XXV'; 'XXVI'; 'XXVII'; 'XXVIII'; 'XXIX'; 'XXX' };
    value = cents{century};
end