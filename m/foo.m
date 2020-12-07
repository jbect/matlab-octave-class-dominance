function cn = foo (cn, x, y)

if nargin == 1
    fprintf ('@%s/f.m: <%s>\n', cn, class (x));
else
    fprintf ('@%s/f.m: <%s> <%s>\n', cn, class (x), class (y));
end

end