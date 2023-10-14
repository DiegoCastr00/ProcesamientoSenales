function convolucion_manual = convolucion_manual(f, g)

    N = length(f);
    M = length(g);
    convolucion_manual = zeros(1, N + M - 1);
    
    for n = 1:N+M-1
        suma = 0;
        for k = max(1, n-M+1):min(n, N)
            suma = suma + f(k) * g(n - k + 1);
        end
        convolucion_manual(n) = suma;
    end
end
