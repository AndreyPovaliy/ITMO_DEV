package Practice04;

public class Main {
    public static void main(String[] args) {
        Integer alpha = 9;
        Integer beta = -13;

        double[][] mat_a = {
                {2, -5, 5}, {1, -4, 9}, {5, -1, 3}};
        double[][] mat_b = {
                {2, -1, 7}, {1, -6, 3}, {6, -9, 7}};
        double[][] mat_c = {
                {4, -3, 9}, {5, -4, 1}, {3, -5, 3}};

        Matrix matA = new Matrix(3, 3);
        Matrix matB = new Matrix(3, 3);
        Matrix matC = new Matrix(3, 3);

        matA.setCell(0, 0, 2);
        matA.setCell(0, 1, -5);
        matA.setCell(0, 2, 5);
        matA.setCell(1, 0, 1);
        matA.setCell(1, 1, -4);
        matA.setCell(1, 2, 9);
        matA.setCell(2, 0, 5);
        matA.setCell(2, 1, -1);
        matA.setCell(2, 2, 3);

        matB.setCell(0, 0, 2);
        matB.setCell(0, 1, -1);
        matB.setCell(0, 2, 7);
        matB.setCell(1, 0, 1);
        matB.setCell(1, 1, -6);
        matB.setCell(1, 2, 3);
        matB.setCell(2, 0, 6);
        matB.setCell(2, 1, -9);
        matB.setCell(2, 2, 7);


        matC.setCell(0, 0, 4);
        matC.setCell(0, 1, -3);
        matC.setCell(0, 2, 9);
        matC.setCell(1, 0, 5);
        matC.setCell(1, 1, -4);
        matC.setCell(1, 2, 1);
        matC.setCell(2, 0, 3);
        matC.setCell(2, 1, -5);
        matC.setCell(2, 2, 3);

        Matrix resultStep1 = new Matrix(3, 3);

        long start = System.nanoTime();
        try {
            resultStep1 = MultyplyScalar.multiplyScalar(matA, alpha);
        } catch (Exception e) {
            System.err.println("Ошибка!");
        }

        Matrix resultStep3 = new Matrix(3, 3);
        try {
            resultStep3 = MultyplyScalar.multiplyScalar(matC, beta);
        } catch (Exception e) {
            System.err.println("Ошибка!");
        }

        Matrix resultStep2 = new Matrix(3, 3);
        try {
            resultStep2 = Multiply.multiply(resultStep1, matB);
        } catch (Exception e) {
            System.err.println("Ошибка!");
        }


        try {
            Matrix resultStep4 = SumMatrix.sumMatrix(resultStep2, resultStep3);
            System.out.println(resultStep4);
        } catch (Exception e) {
            System.err.println("Ошибка!");
        }
        long finish = System.nanoTime();
        long elapsed = (finish - start);
        System.out.println("Прошло времени, нс: " + elapsed );
    }

// Прошло времени, нс: 99195100 (0,099 сек)
}
