# 组件化开发三种方式

******

## 第一种

###添加Protocol

#### 大致流程：
1.创建ModuleAVC
2.创建ModuleAProtocol.h , 声明与ModuleAVC的相关methid
3.创建ModuleAprovide.h , 遵守ModuleAProtocol协议，并实现
4.在PProtocolViewController中,先获取ModuleAProvide然后再获取ModuleAVC,最后push
