#create by zhaotongyang 20200122


SrcFiles=$(wildcard *.c)
TargetFiles=$(patsubst %.c,%.o,$(SrcFiles))
all:$(TargetFiles)
	gcc -o all $(TargetFiles)
%.o:%.c
#	arm-poky-linux-gnueabi-gcc -march=armv7-a -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 --sysroot=/opt/genvict-imx-fb/4.1.15-1.2.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi -o $@ $<  -lpthread -g -lm
	gcc -c $<  

clean:
	rm -f $(TargetFiles)
	rm -f all
print:
	@echo targetfile: $(TargetFiles)
	@echo SrcFiles: $(SrcFiles)
