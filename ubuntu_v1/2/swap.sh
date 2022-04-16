sudo swapon --show
free -h
df -h
sudo fallocate -l 20G /swap_file
ls -lh /swap_file
-rw-r--r-- 1 root root 20.0G Apr 25 11:14 /swap_file
sudo chmod 600 /swap_file
ls -lh /swap_file
sudo mkswap /swap_file
sudo swapon /swap_file
sudo swapon --show
free -h
sudo cp /etc/fstab /etc/fstab.bak
echo '/swap_file none swap sw 0 0' | sudo tee -a /etc/fstab
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
sudo pluma /etc/sysctl.conf


cat /proc/sys/vm/vfs_cache_pressure
sudo sysctl vm.vfs_cache_pressure=50
sudo pluma /etc/sysctl.conf

