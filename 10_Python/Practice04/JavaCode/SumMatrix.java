package Practice04;

public class SumMatrix {
    public static Matrix sumMatrix(Matrix p, Matrix q) throws Exception {
        int v = p.getRows();
        int h = q.getColomns();
        int temp = p.getColomns();

        if (temp != q.getRows()) {
            System.out.println("Сложение невозможно");
        }

        Matrix result = new Matrix(v,h);

        for (int i=0; i < v; i++)
            for (int j = 0; j< h; j++){
                int value = 0;
                for (int k = 0; k < temp; k++){
                    value += p.getCell(i,k)+q.getCell(k,j);
                }
                result.setCell(i,j,value);
            }
        return result;
    }
}
