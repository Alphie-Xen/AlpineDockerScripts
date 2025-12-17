apk add qemu-system-x86_64
apk add qemu-ui-gtk
apk add qemu-img

mkdir qemu-android
cd qemu-android

wget -O android.iso https://archive.org/download/sjarb_android_5.1
RC1/android-x86-5.1-rc1.iso

qemu-img create -f qcow2 disk.qcow2 20G

qemu-system-x86_64 -smp 4 -m 4G  -drive file=disk.qcow2,format=qco
w2,if=ide,index=0 -cdrom android.iso  &

