package com.tt.service;

import com.tt.domain.Matrix;

public interface MatrixService {
    int storeMatrix(Matrix matrix,int[][] data);
    Matrix findEigen(int id);
    boolean deleteById(int id);

}
