## 技术博客

- [Basic](md/language/basic.md) - [思维导图](mind/Basic.pdf)
  - [算法](md/language/basic.md#算法)
  - [设计模式](md/language/basic.md#设计模式)
- [Java](md/language/java.md) - [思维导图](mind/Java.pdf)
  - [集合](md/language/java.md#集合)
    - [非线程安全集合](md/language/java.md#非线程安全集合)
    - [线程安全集合](md/language/java.md#线程安全集合)
  - [并发](md/language/java.md#并发)
    - [线程](md/language/java.md#线程)
    - [`ExecutorService` 和 `Thread Pools`](#executorservice-和-thread-pools)
    - [死锁/活锁/饥饿锁 乐观锁/悲观锁](#死锁活锁饥饿锁-乐观锁悲观锁)
    - [CountDownLatch/Semaphore](#countdownlatchsemaphore)
- [Kotlin](md/language/kotlin.md)
  - [基础](md/language/kotlin.md#基础)
    - [基础语法](md/language/kotlin.md#基础语法)
    - [惯用语法](md/language/kotlin.md#惯用语法)
- [Android](md/language/android.md) - [思维导图](mind/Android.pdf)
  - [基础篇](md/language/android.md#基础篇)
  - [原理篇](md/language/android.md#原理篇)
  - [核心篇](md/language/android.md#核心篇)
  - [开源篇](md/language/android.md#开源篇)
  - [外设篇](md/language/android.md#外设篇)
    - [低功耗蓝牙](md/language/android.md#低功耗蓝牙Bluetooth-Low-Energy)
    - [串口通信](md/language/android.md#串口通信)
- [Flutter](md/language/flutter.md)
- [Golang](md/language/golang.md)
  - [交叉编译](md/language/golang.md#交叉编译)
- [OS](md/language/os.md)
  - [Mac](md/language/os.md#Mac)
    - [用户环境变量](md/language/os.md#用户环境变量)
  - [Linux](md/language/os.md#Linux)
  - [Ubuntu](md/language/os.md#ubuntu)
  - [Centos](md/language/os.md#centos)
  - [Nginx](md/language/os.md#nginx)
  - [Docker](md/language/os.md#docker)
- [Tool](#Tool)
  - [Google 搜索技巧](#Google-搜索技巧)
  - [Mysql](md/tool/mysql.md)
  - [Git](md/tool/git.md)
    - [设置 Git 代理](#设置-Git-代理)
    - [设置 Git SSH 代理](#设置-Git-SSH-代理)
    - [Commit Message 规范](md/tool/git-commit-message-specification.md)
  - [Vim](md/tool/vim.md)
  - [ADB](#ADB)
  - [Shadowsocks](https://github.com/itwangxiang/docs/wiki/VPS.Shadowsocks)
- [Asset](#asset)
  - book
    - [设计模式_可复用面向对象软件的基础](asset/book/设计模式_可复用面向对象软件的基础.pdf)
    - [HeadFirst_设计模式](asset/book/HeadFirst_设计模式.pdf)

---

## Tool

### Google 搜索技巧

> [Google 搜索帮助文档](https://support.google.com/websearch/answer/2466433)

- 完全匹配 - `""`

  ```text
  "关键字"
  "最高的建筑"
  ```

- 排除关键字 - `-`

  ```text
  关键字 -排除关键字
  中国美食 -麻辣
  ```

- 组合搜索 - `OR`

  ```text
  关键字 OR 关键字
  马拉松 OR 比赛
  ```

- 搜索特定网站 - `site:`

  ```text
  关键字 site:网址
  美女 site:youtube.com
  ```

- 文件类型 - `filetype:`

  ```text
  关键字 filetype:文件类型
  ```

- 模糊匹配 - `*`

  ```text
  关键字*关键字
  ```  

- 搜索 # 标签  - `#`

  ```text
  #关键字
  ```

- 同义词 - `~`

  ```text
  关键字 ~同义关键字
  ```  

- 关键词 - `intitle`  

### ADB

- 常规
  
  ```bash
  adb tcpip 5555 //设置远程设备监听端口
  adb connect ip:port //连接远程设备
  adb -s 20b5c60c shell ifconfig wlan0 //查看 IP
  adb reconnect //重新连接设备
  adb shell am start -n ｛package｝/.{activity} //启动程序
  adb shell setprop persist.service.adb.tcp.port 5555 //设置系统重启后，远程设备监听端口
  adb shell wifitest -z "W 00:1f:2e:3d:4c:5b" //设置 WI-FI MAC
  adb shell wifitest -z "B 00:1f:2e:3d:4c:5b" //设置 蓝牙 MAC
  ```
