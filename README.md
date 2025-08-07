# cmake 工程模板 

## 软件安装
1. cmake [text](https://cmake.org/download/) 添加安装目录地址到环境变量中 例如：C:\Downloads\cmake-3.16.rc-1-win64-x64\bi
2. GNU ARM-Toolchain [text](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
3. MinGW [text](https://osdn.net/projects/mingw/releases/)
    - Get basic MinGW installation
    - Start “MinGW Installation Manager”
    - Select “mingw32-base-bin” in the list
    - Click Installation -> Apply Changes
    - 添加安装目录到环境变量中
    - 添加setting.json "TOOLCHAIN_PREFIX":"C:/Program Files (x86)/GNU Tools ARM Embedded/9 2019-q4-major"
4. vscode 安装插件 
    - cmake tool
    - cortex-debug 
    - c/c++ tool
5. 安装jlink 
## 移植修改
* setting.json 中修改 TOOLCHAIN_PREFIX 路径 
* task.json 中修改 jlink 路径 
* jlink/download.jlink 中修改bin 文件的绝对路径



## 工程实现
JSD_Dongle/  
├── CMakeLists.txt                  # 根目录 CMake 配置文件  
├── CMake/  
│   └── toolchain-arm-none-eabi.cmake  # 工具链配置文件 
├── application/  
│   ├── app/                            #应用源码目录  
│   │   ├── CMakeLists.txt              #构建目标配置文件  
│   │   ├── inc/  
│   │   │   └── main.h  
│   │   └── src/  
│   │       └── main.c  
│   ├── cmsis/                          #单片机及内核相关  
│   │   ├── CMakeLists.txt  
│   │   ├── core/  
│   │   │   └── inc/  
│   │   │       ├── cmsis_gcc.h  
│   │   │       └── core_cm0plus.h  
│   │   ├── inc/  
│   │   │   ├── fm33le0xx.h  
│   │   │   └── system_fm33le0xx.h  
│   │   └── src/  
│   │       ├── xxxx.ld      # 连接脚本，注意app 启动地址配置  
│   │       ├── startup_xx.S  
│   │       └── system_xx.c      # 注意配置中断向量表地址   
│   └── mcal/                           # MCU 应用抽象层  
│       ├── CMakeLists.txt  
│       ├── inc/  
│       │   ├── xxx_mcal.h  
│       └── src/  
├── boot/                           # boot 源代码目录  
│   ├── cmsis/  
│   │   ├── CMakeLists.txt  
│   │   ├── core/  
│   │   │   └── inc/  
│   │   │       └── core_cm0plus.h  
│   │   ├── inc/  
│   │   │   ├── xx.h  
│   │   │   └── xx.h  
│   │   └── src/  
│   │       ├── xxx_flash.ld   # 链接脚本  
│   │       ├── startup_xxx.S  # 启动代码（如复位处理函数）  
│   │       └── system_xxx.c   # 系统初始化代码  
│   ├── src/  
│   │   └── main.c  
│   ├── inc/  
│   └── CMakeLists.txt              # 构建目标的 CMake  
├── drivers/  
│   ├── peripherials/  
│   │   ├── CMakeLists.txt
│   │   └── xx_FL_Driver/    # MCU 驱动库
│   │       ├── Inc/
│   │       └── Src/
│   └── utils/
├── lib/                        # 外部库（如 CMSIS, HAL 等）
├── build/                      # 构建目录  输出文件
│   ├── application/
│   │   └── app/
│   │       ├── app.bin
│   │       ├── app.elf
│   │       ├── app.hex
│   │       ├── app.map
│   │       └── merged.hex
│   └── boot/
│       ├── boot.bin
│       ├── boot.elf
│       ├── boot.hex
│       └── boot.map
├── jlink/
│   ├── XXX.SVD
│   ├── app_download.jlink  # 烧录配置 需要配置绝对路径
│   ├── boot_download.jlink # 烧录配置 需要配置绝对路径
│   └── download.jlink      # boot+app 烧录
├── middleware/
└── README.md

## 烧录 
烧录的方法是使用vscode 的task 调用JLink.exe 刷入单片机。 
需要配置的是 .vscode/tasks.json 中的烧录tasks 的command 
工程预设 三个烧录task boot  app  all 
## debug
调试用的是vscode 的cortex-debug 插件，加上jlink 的gdbservercl 服务。
在.vscode/tasks.json 中配置了两个debug。 boot和app 

## 增加源文件
若是需要增加源文件，一般在一个模块下添加.c和.h文件。 每个模块都有对应的CMakeLists.txt文件。 
一般在 target_sources(${PROJECT_NAME}  下添加.c 文件
也有在 list(APPEND ${PROJECT_NAME}_SOURCES 下添加 .c文件

头文件 在 target_include_directories 中添加路径 

## 增加模块 
可以单独的创建一个模块需要按以下步骤
1. 在工程根目录下的CMakeLists.txt中 添加 add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/boot/cmsis EXCLUDE_FROM_ALL) 修改正确的路径
2. 在对应的路径下添加 文件，编写CMakeLists.txt . 
3. 模块的使用  在构建目标的CMakeLists.txt中 添加 add_executable(${PROJECT_NAME} 将模块名称写入 例如 $<TARGET_OBJECTS:mcal> ，添加 头文件包含和定义包含 即可

## 移植步骤  
1. 添加单片机的库驱动到  \drivers\peripherials\ 下 并修改 cmakelists 文件
1.1 复制工程中的stm32l4xx_hal_conf.h 到inc 同级目录
2. boot 修改 
    1. 在boot/cmsis/inc 中添加 芯片的头文件 
    2. 在boot/cmsis/src 中添加 链接脚本文件、启动文件、系统初始化文件 修改cmakelists文件 
    3. 添加单片机抽象层 在 mcal 文件夹下添加 对应的文件 并实现串口的基础应用
3. app修改 
    1. 在applications/cmsis 中 添加和boot相同的文件 注意修改flash 启动地址和中断向量表重定向
    2. 添加mcal 文件
## 打印库支持 
    extern uint8_t _end;         /* Symbol defined in the linker script */
    extern uint8_t _estack;      /* Symbol defined in the linker script */
    extern uint32_t _Stack_Size; /* Symbol defined in the linker script */
## ST 库移植时注意
1. stm32g0xx.h中 #include "stm32g0xx_hal.h" 
