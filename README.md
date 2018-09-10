# 组件化开发三种方式

******

## 第一种

### Protocol （利用协议中间类进行解耦）

#### 大致流程：

##### 1、创建ModuleAVC
##### 2、创建ModuleAProtocol.h , 声明与ModuleAVC的相关methid
##### 3、创建ModuleAprovide.h , 遵守ModuleAProtocol协议，并实现
##### 4、在PProtocolViewController中,先获取ModuleAProvide然后再获取ModuleAVC,最后push



## 第二种

### Runtime（利用performFromSelector进行解耦）

#### 大致流程

##### 1、如果不想自己写Mediator的话，就导入casa大神的CTMediator类
##### 2、创建ModuleAViewController
##### 3、创建对应的实现类以及Mediator的中转分类。并创建对应的实现方法。