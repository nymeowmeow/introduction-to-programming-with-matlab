function res = eligible(v, q)
    res = (min([v, q]) > 88) && (mean([v, q]) >= 92);
end