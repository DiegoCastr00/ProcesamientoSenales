function u = escalon_unitario(t, retraso)

    if nargin < 2
        retraso = 0;
    end
    
    u = zeros(size(t));
    for i = 1:length(t)
        if t(i) >= retraso
            u(i) = 1;
        end
    end
end
