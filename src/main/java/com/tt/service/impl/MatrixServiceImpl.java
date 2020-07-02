package com.tt.service.impl;
import com.mathworks.toolbox.javabuilder.*;
import com.tt.dao.MatrixDao;
import com.tt.domain.Matrix;
import com.tt.service.MatrixService;
import eig_Jacobi.Jacobi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service("matrixServiceImpl")
public class MatrixServiceImpl implements MatrixService {
    @Autowired
    @Qualifier("matrixDao")
    private MatrixDao matrixdao;

    @Override
    public int storeMatrix(Matrix matrix,int[][] data) {
            MWNumericArray q = null;
            MWNumericArray z = null;
            Object[] result1 = null;
            Jacobi js = null;
            String value=null;
            String vector=null;
            Integer st;
//            int[][] data = {{2, -1, 0}, {-1, -2, -2}, {0, -1, 2}};



        try {
            js = new Jacobi();
            q = new MWNumericArray(data, MWClassID.DOUBLE);
            z = new MWNumericArray(matrix.getPs(), MWClassID.DOUBLE);
            if("经典Jacobi".equals(matrix.getMethod())){
                result1 = js.eig_Jacobi(3, q, z);

            }else {
                result1=js.eig_lymeigjacobi(3,q,z);

            }
            System.out.println(result1[0]);
            System.out.println(result1[1]);
            System.out.println(result1[2]);
            vector = String.valueOf(result1[0]);
            value= String.valueOf(result1[1]);
            st=Integer.parseInt(result1[2].toString());
            matrix.setValue(value);
            matrix.setVector(vector);
            matrix.setSt(st);
            matrix.setData(String.valueOf(q));


        } catch (MWException e) {
            e.printStackTrace();
        } finally {
            MWArray.disposeArray(q);
            MWArray.disposeArray(z);
            MWArray.disposeArray(result1);
            js.dispose();
        }

//        int matrix1=matrixdao.storeMatrix(matrix);
        matrixdao.storeMatrix(matrix);
        System.out.println(matrix.getValue().getClass());
        return  matrix.getId();

    }

    @Override
    public Matrix findEigen(int id) {
        return matrixdao.findEigen(id);
    }

    @Override
    public boolean deleteById(int id) {
        return matrixdao.deleteById(id)==1?true:false;
    }
}



