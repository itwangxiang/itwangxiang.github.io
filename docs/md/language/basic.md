
## Basic

### 算法

#### 排序算法

> 对一序列对象根据某个关键字进行排序

##### 冒泡排序

```java
public static void bubbleSort(int[] array) {
    for (int i = 0; i < array.length; i++)
        for (int j = 0; j < array.length - i - 1; j++)
            if (array[j + 1] < array[j]) {
                int temp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = temp;
            }
}
```

##### 选择排序

```java
public static void selectionSort(int[] arr) {
    int min, temp;
    for (int i = 0; i < arr.length; i++) {
        // 初始化未排序序列中最小数据数组下标
        min = i;
        for (int j = i + 1; j < arr.length; j++) {
            // 在未排序元素中继续寻找最小元素，并保存其下标
            if (arr[j] < arr[min]) {
                min = j;
            }
        }
        // 将未排序列中最小元素放到已排序列末尾
        if (min != i) {
            temp = arr[min];
            arr[min] = arr[i];
            arr[i] = temp;
        }
    }
}
```

##### 快速排序

```java
public static void quickSort(int[] arr, int head, int tail) {
    if (head >= tail || arr == null || arr.length <= 1) {
        return;
    }
    int i = head, j = tail, pivot = arr[(head + tail) / 2];
    while (i <= j) {
        while (arr[i] < pivot) {
            ++i;
        }
        while (arr[j] > pivot) {
            --j;
        }
        if (i < j) {
            int t = arr[i];
            arr[i] = arr[j];
            arr[j] = t;
            ++i;
            --j;
        } else if (i == j) {
            ++i;
        }
    }
    quickSort(arr, head, j);
    quickSort(arr, i, tail);
}
```

### 设计模式

- 相关书籍
  - [HeadFirst_设计模式.pdf](asset/book/HeadFirst_设计模式.pdf)
  - [设计模式_可复用面向对象软件的基础.pdf](asset/book/设计模式_可复用面向对象软件的基础.pdf)

#### 创建型

- 工厂方法模式 `Factory Method Pattern`
  - UML 图
  ![factory](asset/img/factory_method.jpg)
  - Code
    - [FactoryMethodPattern.java](code/java/src/cn/todev/examples/pattern/FactoryMethodPattern.java)
  - Java 中用例
    - [java.util.Calendar](https://docs.oracle.com/javase/8/docs/api/java/util/Calendar.html#getInstance--)

- 建造者模式 `Builder Pattern`
- 单例模式 `Singleton Pattern`

#### 结构型

#### 行为型
