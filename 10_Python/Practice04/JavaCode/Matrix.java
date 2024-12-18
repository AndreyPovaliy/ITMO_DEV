package Practice04;

public class Matrix {
    private int mat_a[][];

    public Matrix(int n, int m) {
        mat_a = new int[n][m];
    }



    public int getRows() {
        return mat_a.length;
    }

    public int getColomns() {
        return mat_a[0].length;
    }

    public int getCell(int i, int j) {
        return mat_a[i][j];
    }

    public void setCell(int i, int j, int value) {
        mat_a[i][j] = value;
    }

    @Override
    public String toString() {
        String s = "\n Matrix: " + mat_a.length + "x" + mat_a[0].length + "\n";
        for (int vector[] : mat_a) {
            for (int value : vector) {
                s += value + " ";
            }
            s +=  "\n ";
        }
        return s;
    }
}

