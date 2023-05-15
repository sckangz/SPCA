% function error_test = cal_error(X_train, X_test, W, noise_perm, noise_images)
function error_test = cal_error(X_train, X_test, W, noise_perm, noise_images, M)
W_T = W';
if ~exist('M', 'var')
    M = 0;
end
% Train Error
% error_train = 0;
train_samples = size(X_train,2);
% for i = 1 : train_samples
%     error_train = error_train + norm(X_train(:,i)-W*W_T*X_train(:,i));
% end
% error_train = (1/train_samples)*error_train;
% Test Error
error_test = 0;
test_samples = size(X_test,2);
for i = 1 : test_samples-1

    if any(noise_perm(1:noise_images) - train_samples == i) == 0
%         I = reshape(X_test(:,i),32,32);
%         figure();
%         imshow(I);
        error_test = error_test + norm((X_test(:,i))-W*W_T*(X_test(:,i)));
    end
end


error_test = (1/test_samples)*error_test;

