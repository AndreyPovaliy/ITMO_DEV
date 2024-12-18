package Lesson4;

import java.util.Arrays;

public class SortArray {
    public static void main(String[] args) {
        int[] ints = {44, 231, 23, 34, 54, 55, 434, 76, 87, 2, 3};

        bubbleSort(ints);
        int[] sortedArray = mergeSort(ints);
        System.out.println(Arrays.toString(sortedArray));


    }

    private static int[] mergeSort(int[] ints) {

        System.out.println(Arrays.toString(ints));
        if (ints.length < 2) {
            return ints;
        }
        int mid = ints.length / 2;
        int[] left = new int[mid];
        int[] right;

        if (ints.length % 2 == 0) {
            right = new int[mid];

        } else {
            right = new int[mid + 1];
        }

        for (int i = 0; i < left.length; i++) {
            left[i] = ints[i];
        }

        for (int i = 0; i < right.length; i++) {
            right[i] = ints[mid + i];
        }

        left = mergeSort(left);
        right = mergeSort(right);

        return mergeParts(left, right);
    }

    private static int[] mergeParts(int[] left, int[] right) {
        int[] result = new int[left.length + right.length];

        int leftPointer = 0;
        int rightPointer = 0;
        int resultPointer = 0;

        while (leftPointer < left.length || rightPointer < right.length) {
            if (leftPointer < left.length && rightPointer < right.length) {
                if (left[leftPointer] < right[rightPointer]) {
                    result[resultPointer++] = left[leftPointer++];
                } else {
                    result[resultPointer++] = right[rightPointer++];
                }
            } else if (leftPointer < left.length) {
                result[resultPointer++] = left[leftPointer++];

            } else if (rightPointer < right.length) {
                result[resultPointer++] = right[rightPointer++];
            }
        }

        return result;
    }

    private static void bubbleSort(int[] ints) {
        for (int i = 0; i < ints.length; i++) {
            for (int j = 0; j < ints.length; j++) {
                if (ints[i] < ints[j]) {
                    int aj = ints[j];
                    int ai = ints[i];
                    ints[j] = ai;
                    ints[i] = aj;
                }
            }
        }

        System.out.println(Arrays.toString(ints));
    }
}
