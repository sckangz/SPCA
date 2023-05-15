function W = SPCA(X_train, k, NITER, p, esp, c)


%% Create Project Matrix, s.t. W_T*W = I
[dimension,n] = size(X_train);
W = rand(dimension,k);
W = orth(W);


%% Initializition
S = rand(n);
lag = rand(1,n);
w = rand(1,n);
w = 1-(1+exp(-1/esp))./(1+exp(lag-1/esp));


%% Update w, W
for t=1:NITER


    for iter = 1:5
        w = 1-(1+exp(-1/esp))./(1+exp(lag-1/esp));
        for i = 1:n
            B = W'*(X_train-X_train(:,i));
            S(i,:) = w(i).*((sqrt(sum(B.*B)+eps).^(p-2)));
            S(i,i) = 0;
        end
        d = sum(S,2);
        D = spdiags(d,0,n,n);
        L = (D - S);
        H = (X_train*L*X_train'*W);
        [U, ~, V] = svds(H,k); %singular value decomposition -- economy size
        W = U*V'; 
        lag = cal_loss(X_train, W, p);
        lag = c*(lag./max(lag));
    end
    
end
