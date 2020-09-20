function D = alg_fct(n)
B = 1;
if n == 1 % также хотел сделать для нуля, но команда 0 || 1 работает неверно.
    o = num2str(n);
    X = [o,'! =', o]; disp(X);
else
    for p = 2:n
        s = p;
        K = ones(factorial(s-1),1).* p;
        B = [K , B];
        z = 0; % число перестановок
        v = 0; % номер строки "с"
        w = 1; % номер строки "до"
        while z ~= p
            C = [B(1 : factorial(p-1), 2:end)];
            B = [C, B(1 : factorial(p-1),1)];
            D((1+v):factorial(p-1)*w, 1: p) = B;
            v = v + factorial(p-1);
            w = w + 1;
            z = z + 1;
        end
        B = D;
    end
end
end
