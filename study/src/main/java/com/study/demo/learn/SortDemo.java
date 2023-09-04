package com.study.demo.learn;

import java.util.Arrays;

public class SortDemo {
    public static void main(String[] args) {
        int[] a = {-1, 4<<2, 2, 5, 6, 8, 99};
//        int[] a = {-1000000001, 400000000, 200000000, 500000000, 500000000, 800000000, 999999999};
        bubble_v2(a);
        System.out.println(Arrays.toString(a));
        int b = binarySearch(a, 8);
        System.out.println("--------------");
        System.out.println(b);
    }

    private static int binarySearch(int[] a, int target) {
        int l = 0;
        int r = a.length - 1;
        while (l <= r) {
            int m = (l + r) >> 1;
            System.out.println(m);
            if (a[m] == target) {
                return m;
            }
            if (a[m] > target) {
                r = m;
            } else if (a[m] < target) {
                l = m;
            }
        }
        return -1;
    }

    private static void bubble_v2(int[] a) {
        int n = a.length - 1;
        while (n > 0) {
            int last = 0;
            for (int i = 0; i < n; i++) {
//                System.out.println(i);
                if (a[i] > a[i + 1]) {
                    swap(a, i, i + 1);
                    last = i;
                }
            }
            n = last;
        }
    }

    private static void swap(int[] a, int i, int j) {
        int temp = a[i];
        a[i] = a[j];
        a[j] = temp;
    }

}
