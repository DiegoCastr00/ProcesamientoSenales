function d = delta_dirac(t, retraso)

    if nargin < 2
        retraso = 0;
    end
    
    d = zeros(size(t));
    for i = 1:length(t)
        if t(i) == retraso
            d(i) = 1;
        end
    end
end
