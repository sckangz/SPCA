clear
NITER = 10;
p1 = 0.5;
p2 = 1.0;
p3 = 1.5;
c = 15;

fea = 10;
loadmat = 'ORL_400n_1024d_40c_range_uni.mat';

 
[X_train, X_test, ~, noise_perm, noise_images] = load_data(loadmat);    

W = SPCA(X_train, fea, NITER, p3, 0.1, c);
error = cal_error(X_train, X_test, W, noise_perm, noise_images);
disp(error)

    
 