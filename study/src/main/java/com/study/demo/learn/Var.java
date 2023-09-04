package com.study.demo.learn;

import com.study.demo.test.MyTask;
import lombok.SneakyThrows;

import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;

import static java.lang.Thread.sleep;

public class Var {
    private static final int MAXIMUM_CAPACITY = 1 << 30;

    @SneakyThrows
    public static void main(String[] args) throws InterruptedException {
        Long start = System.currentTimeMillis();

//        char c1 = 'a';
//        char c2 = 97;
//        char c3 = '可';
//        char c4 = '\r';
//        char c5 = 9999;
//        byte b1 = -128;
//        byte b2 = 127;
//        byte b3 = (byte) -129;
//        String s1 = "123";
//        int i1 = Integer.parseInt(s1);
//        double d1 = Double.parseDouble(s1);
//        float f1 = Float.parseFloat(s1);
//        char cc1 = s1.charAt(0);
//        double d2 = 10 / 3;
//        System.out.println(10 / 3);
//        System.out.println(10.0 / '3');
//        System.out.println(10.0f / 3);
//        System.out.println(d2);
//        System.out.println((int) '0');
//        System.out.println((int) '3');
//        System.out.println(cc1);
//        System.out.println(i1);
//        System.out.println(d1);
//        System.out.println(f1);
//        System.out.println(b3);
//        System.out.println(c2);
//        System.out.println((int) c3);
//        System.out.println(c5);
//        System.out.println(c1 + c2 + c3 + c4);
//        System.out.println("\n你好呀\rHello\rBunbury");
//        Week[] weeks = Week.values();
//        for (Week week : weeks) {
//            System.out.println(week);
//        }

//        Date date = new Date();
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//        System.out.println(simpleDateFormat.format(date));
//        Calendar calendar = Calendar.getInstance();
//        System.out.println(calendar.get(Calendar.MINUTE));
//        ArrayList arrayList = new ArrayList<>();
//        arrayList.add("1");
//        arrayList.add(null);
//        for (Object o : arrayList) {
//            System.out.println(o);
//        }

//        ArrayList<Integer> arrayList = new ArrayList<>(List.of());
//        ArrayList<Integer> arrayList = new ArrayList<>(List.of(-3,-2,-1));
        CopyOnWriteArrayList<Integer> arrayList = new CopyOnWriteArrayList<>(List.of());
        arrayList.addAll(List.of(-13, -12, -11));
        for (int i = 1; i <= 25; i++) {
            arrayList.add(i);
        }
        arrayList.contains(97);
//        Collections.reverse(arrayList);
//        Collections.sort(arrayList);
//        Collections.swap(arrayList, 0, 4);
//        Collections.shuffle(arrayList);
//        System.out.println(arrayList);
//        for (Integer i : arrayList) {
//            System.out.println(i);
//        }

        Vector vector = new Vector<String>();
        for (int i = 1; i <= 15; i++) {
            vector.add(i);
        }
        System.out.println(vector);
//        for (Object i : vector) {
//            System.out.println(i);
//        }

//        Set set = new HashSet<>();
//        for (int i = 97; i <= 120; i++) {
//            set.add((char) i);
//        }
//        set.contains(97);
//        System.out.println(set);
//

//        HashMap<Integer, Character> map = new HashMap(64);
//        for (int i = 9100; i <= 9110; i++) {
////            System.out.println(tableSizeFor(i));
//            System.out.println(hash(i));
//            System.out.println(i ^ i >>> 16);
//            System.out.println(i ^ (i >>> 16));
//            map.put(i, (char) i);
//        }
//        System.out.println(map);
//        int[] sizes = {16};
//        System.out.println(sizes);

        HashMap<Character, Object> map = new HashMap();
        Thread t1 = new Thread(() -> map.put('a', new Object()), "t1");
        Thread t2 = new Thread(() -> map.put('1', new Object()), "t2");
        String s1 = "s1";
        s1.hashCode();

        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println(map);

//        Thread thread = new Thread(() -> {
//            System.out.println("t1");
//        }, "thread1");
        ArrayBlockingQueue queue = new ArrayBlockingQueue(2);
        AtomicInteger c = new AtomicInteger(1);
        ThreadPoolExecutor threadPool = new ThreadPoolExecutor(2,
                3,
                0,
                TimeUnit.MILLISECONDS,
                queue, r -> new Thread(r, "myThread" + c.getAndIncrement()),
//        new ThreadPoolExecutor.AbortPolicy()
//        new ThreadPoolExecutor.CallerRunsPolicy()
        new ThreadPoolExecutor.DiscardOldestPolicy()
        );
        System.out.println(threadPool);
        threadPool.submit(new MyTask("1",3600000));
        System.out.println(threadPool);
        threadPool.submit(new MyTask("2",3600000));
        System.out.println(threadPool);
        threadPool.submit(new MyTask("3"));
        System.out.println(threadPool);
        threadPool.submit(new MyTask("4"));
        System.out.println(threadPool);
        threadPool.submit(new MyTask("5"));
        System.out.println(threadPool);
        threadPool.submit(new MyTask("6"));
        System.out.println(threadPool);

//        Cat cat = new Cat();
//        cat.start();
//        for (int i = 0; i <= 10; i++) {
//            System.out.print(Thread.currentThread().getName() + i);
//            System.out.print(" ");
//            System.out.println("新兵喝了" + i + "碗汤");
//            sleep(10);
//            if (i == 0) {
//                System.out.println("鸡汤来咯");
//                cat.join();
//                cat.interrupt();
//                System.out.println("喝，为什么不喝");
//            }
//        }

//        Seller seller = new Seller();
//        Thread thread1 = new Thread(seller);
//        Thread thread2 = new Thread(seller);
//        Thread thread3 = new Thread(seller);
//        thread1.start();
//        thread2.start();
//        thread3.start();

        String path = "rc.properties";
        File file = new File(path);
        if (!file.exists()) file.createNewFile();

        FileInputStream fileInputStream = new FileInputStream(path);
        Properties properties = new Properties();
        properties.load(fileInputStream);
        String classpath = properties.get("classpath").toString();
        String method = properties.get("method").toString();

        Class cls = Class.forName(classpath);
        Object o = cls.newInstance();
        Method method1 = cls.getMethod(method);
        method1.invoke(o);

        Long end = System.currentTimeMillis();
        System.out.println(end - start);
    }

    static final int tableSizeFor(int cap) {
        int n = -1 >>> Integer.numberOfLeadingZeros(cap - 1);
        return (n < 0) ? 1 : (n >= MAXIMUM_CAPACITY) ? MAXIMUM_CAPACITY : n + 1;
    }

    static final int hash(Object key) {
        int h;
        return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
    }
}

class Seller implements Runnable {
    public static int ticket = 100;

    @SneakyThrows
    public synchronized void method() {
        if (ticket <= 0) return;
        System.out.println(Thread.currentThread().getName() + "售票剩余：" + (--ticket));
        sleep(50);
    }

    @Override
    public void run() {
        while (true) {
            method();
        }
    }
}


class Cat extends Thread {
    @Override
    public void run() {
        super.run();
        int temp = 0;
        while (true) {
            try {
                System.out.print(Thread.currentThread().getName() + temp);
                System.out.print(" ");
                System.out.println("司令喝了" + temp + "碗汤");
                sleep(10);
                temp++;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            if (temp > 10) break;
        }
    }
}

enum Week {
    MON("1"), THU("2"), WED("3"), THR("4"), FRI("5"), SAT("6"), SUN("7");
    private String name;

    Week(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Week{" +
                "name='" + name + '\'' +
                '}';
    }
}