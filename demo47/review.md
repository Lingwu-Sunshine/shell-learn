# 一、趣谈`rsync`起停脚本开发

sync是一个linux同步命令，含义为迫使缓冲块数据立即写盘并更新超级块。
其中包含已修改的 i-node、已延迟的块 I/O 和读写映射文件。
[wang@localhost usb]$   man sync

NAME
       sync - flush file system buffers

       SYNOPSIS
              sync [OPTION]

	      DESCRIPTION
	             Force changed blocks to disk, update the super block.

		            --help display this help and exit

			           --version
				                 output version information and exit

						 使用原理：
						 在linux系统中，为了加快数据的读取速度，默认情况下，某些数据将不会直接写入硬盘，而是先暂存内存中，如果一个数据被重复写，这样速度一定快，但存在一个问题，万一重新启动，或者是关机，或者是不正常断电的情况下，由于数据还没来得及存入硬盘，会造成数据更新不正常，这时需要命令sync进行数据的写入，即#sync，在内存中尚未更新的的数据会写入硬盘中。当然正常情况下，关闭系统时会自动进行内存数据于硬盘数据的同步检测，保证硬盘数据在关闭系统时是最新的。

						 使用场合：
						     1.在 关机或者开机之前最好多执行这个几次，以确保数据写入硬盘。
						         2.挂载时，需要很长时间的操作动作（比如，cp 大文件，检测文件），在这个动作之后接sync。
							     3.卸载U盘或其他存储设备，需要很长时间，使用sync。
							      
							      用例：
							          system("sync");
