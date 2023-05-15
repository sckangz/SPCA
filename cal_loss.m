function lag = cal_loss(X_train, W, p)
[~, n] = size(X_train);
S = rand(n);
% for i = 1:n
%     for j = 1:n
%         lag(i) = lag(i)+norm(W'*(X_train(:,i)-X_train(:,j)))^p;
%     end
% end
for i = 1:n
    B = W'*(X_train-X_train(:,i));
    S(i,:) = (sqrt(sum(B.*B)+eps).^p);
    S(i,i) = 0;
end
lag = sum(S, 2);
end
