
应用层 (Application Layer)

中间层 (Middle Layer)

功能模块层 (Module/Service Layer)

外设驱动层 (Driver Layer)

硬件抽象层 (Hardware Abstraction Layer)






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