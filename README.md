
# 组件化开发三种方式

##### 此文仅仅展示组件化模式开发的思想，不是最终的开发模式。最终版的开发模式，需要将各个模块作为私有仓库，用cocoPods进行管理。也就是说项目中的各个小模块作为私有仓库，工程中用到哪个模块直接pod 进来即可。

##### 总结的3中组件化开发的方式，有用的朋友顺手给个赞喽👍
******

## 第一种

### Protocol （利用协议中间类进行解耦）

#### 大致流程：

##### 1、创建ModuleAVC
##### 2、创建ModuleAProtocol.h , 声明与ModuleAVC的相关methid
##### 3、创建ModuleAprovide.h , 遵守ModuleAProtocol协议，并实现
##### 4、在PProtocolViewController中,先获取ModuleAProvide然后再获取ModuleAVC,最后push

******

## 第二种

### Runtime（利用performFromSelector进行解耦）

#### 大致流程

##### 1、如果不想自己写Mediator的话，就导入casa大神的CTMediator类
##### 2、创建ModuleAViewController
##### 3、创建对应的实现类以及Mediator的中转分类。并创建对应的实现方法。

******

## 第三种

### URL（利用openUrl进行解耦）

#### 大致流程

##### 1、导入MGJRouter(JLRouter等大体一样，此处使用MGJRouter进行示例演示）
##### 2、创建ModuleCViewController作为待Push的控制器
##### 3、创建MGJRouterRegister类，对URL进行注册
##### 4、在URLViewController中openUrl即可跳转ModuleC