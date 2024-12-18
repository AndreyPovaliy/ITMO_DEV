package Practice04;

public class MultyplyScalar {
    public static Matrix multiplyScalar(Matrix p, int a) throws Exception {
        int v = p.getRows();
        int h = p.getColomns();


        Matrix result = new Matrix(v, h);

        for (int i = 0; i < v; i++) {
            for (int j = 0; j < h; j++) {
                int value = 0;
                for (int k = 0; k < h; k++){
                    value += p.getCell(i,k)*a;
                }
                result.setCell(i,j,value);
            }
        }
        return result;
    }
}
