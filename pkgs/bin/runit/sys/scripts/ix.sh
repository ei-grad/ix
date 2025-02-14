{% extends '//die/proxy.sh' %}

{% block install %}
cd ${out}; mkdir bin; cd bin

cat << EOF > halt
#!/bin/sh
sync
sync
exec runit-init 0
EOF

chmod +x halt

cat << EOF > reboot
#!/bin/sh
sync
sync
exec runit-init 6
EOF

chmod +x reboot

cat << EOF > init
#!/bin/sh
export PATH=/bin
export TMPDIR=/var/tmp
exec chpst -0 -1 -2 runit
EOF

chmod +x init

cd ..

mkdir fix; base64 -d << EOF > fix/run1.sh
{% include 'run1.sh/base64' %}
EOF

mkdir -p etc/runit; cd etc/runit

cat << EOF > 2
#!/bin/sh
mkdir -p /var/run/runsvdir
cd /var/run/runsvdir
exec runsvdir -P /etc/services 1>>out 2>>out
EOF

cat << EOF > 3
#!/bin/sh
EOF

chmod +x 2 3

mkdir 1.d; cd 1.d

cat << EOF > 00-mount-ro.sh
# mount ro
mount -t devtmpfs devtmpfs /dev
mount -t sysfs sysfs /sys
mount -t debugfs none /sys/kernel/debug
mount -t proc proc /proc
mount -t cgroup2 none /sys/fs/cgroup
mkdir /dev/pts /dev/shm
mount -t devpts devpts /dev/pts
mount -t tmpfs shmfs /dev/shm
EOF

cat << EOF > 10-mount-rw.sh
# mount rw
mount -o remount,rw none /
mkdir -p /var/run /var/tmp /var/log
mount -t tmpfs tmpfs /var/run
mount -t tmpfs tmpfs /var/tmp
EOF

cat << EOF > 100-fini.sh
# fini
sysctl -w vm.swappiness=10
echo always > /sys/kernel/mm/transparent_hugepage/enabled
echo 1 > /sys/kernel/mm/transparent_hugepage/khugepaged/scan_sleep_millisecs
ifconfig lo 127.0.0.1
hostname -F /etc/hostname
echo 0 > /proc/sys/kernel/printk
dmesg > /var/log/boot
EOF
{% endblock %}
