function [] = alg_all(n)
B = 1;
if n == 1 % ����� ����� ������� ��� ����, �� ������� 0 || 1 �������� �������. 
    o = num2str(n);
    X = [o,'! =', o]; disp(X);
else
    tic
    p = 2;
    while p ~= n + 1
        s = p;
        K = ones(factorial(s-1),1).* p;
        B = [K , B]; 
        z = 0; % ����� ������������
        v = 0; % ����� ������ "�"
        w = 1; % ����� ������ "��"
        while z ~= p
            C = [B(1 : factorial(p-1), 2:end)];
            B = [C, B(1 : factorial(p-1),1)];
            o = num2str(z + 1);
            D((1+v):factorial(p-1)*w, 1: p) = B;
            v = v + factorial(p-1);
            w = w + 1;
            z = z + 1;
        end
        B = D;
        X = [ o , '!='];
        disp(X); disp(D);
        p = p + 1;
    end
    toc
end
end
