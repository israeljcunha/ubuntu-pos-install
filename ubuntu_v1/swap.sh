sudo swapon --show
free -h
df -h
sudo fallocate -l 20G /swapfile
ls -lh /swapfile
-rw-r--r-- 1 root root 20.0G Apr 25 11:14 /swapfile
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
sudo pluma /etc/sysctl.conf


cat /proc/sys/vm/vfs_cache_pressure
sudo sysctl vm.vfs_cache_pressure=50
sudo pluma /etc/sysctl.conf

