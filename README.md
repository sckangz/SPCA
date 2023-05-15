# Self-paced Principal Component Analysis


> Principal Component Analysis (PCA) has been widely used for dimensionality reduction and feature extraction. Robust PCA (RPCA), under different robust distance metrics, such as ℓ1-norm and ℓ2, p-norm, can deal with noise or outliers to some extent. However, real-world data may display structures that can not be fully captured by these simple functions. In addition, existing methods treat complex and simple samples equally. By contrast, a learning pattern typically adopted by human beings is to learn from simple to complex and less to more. Based on this principle, we propose a novel method called Self-paced PCA (SPCA) to further reduce the effect of noise and outliers. Notably, the complexity of each sample is calculated at the beginning of each iteration in order to integrate samples from simple to more complex into training. Based on an alternating optimization, SPCA finds an optimal projection matrix and filters out outliers iteratively. Theoretical analysis is presented to show the rationality of SPCA. Extensive experiments on popular data sets demonstrate that the proposed method can improve the state-of-the-art results considerably.


## 0. Package Description
```
SPCA-master/
├─ demo.m
├─ SPCA.m
├─ load_data.m
├─ cal_error.m
├─ cal_loss.m
├─ split_train_test.m
├─ README.md
```

## 1. Environments

- MATLAB        (R2016b)


## 2. Contacts

If you have any questions, please feel free to contact [Zhao Kang](mailto:zkang@uestc.edu.cn).

