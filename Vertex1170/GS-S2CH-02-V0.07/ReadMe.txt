
应用层 (Application Layer)

中间层 (Middle Layer)

功能模块层 (Module/Service Layer)

外设驱动层 (Driver Layer)

硬件抽象层 (Hardware Abstraction Layer)


CH1:2000mA 855W 422V 
CH2:750mA  113W 124V
CH3:730mA  283W 364V
CH4:550mA   93W 135V



+-----------------+
|   Application   |  (main.c, 业务逻辑)
+-----------------+
         ↓
+-----------------+
|  Middle Layer   |  (crc.c,  中间层)
+-----------------+
         ↓
+-----------------+
|     Service     |  (mod_xxx.c, 具体功能)
+-----------------+
         ↓
+-----------------+
|     Driver      |  (drv_xxx.c, 元器件驱动)
+-----------------+
         ↓
+-----------------+
|       PIC       |  (pic_xxx.c, 芯片寄存器操作)
+-----------------+