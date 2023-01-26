#!/bin/bash

# to make the script executable, run chmod +x <script_name>

# Set the device name of the new disk
disk="/dev/sdb"

# Set the mount points for the partitions
mount_point1="/mnt/Data1"
mount_point2="/mnt/Data2"

# Create the partitions on the new disk
echo -e "n\np\n1\n\n+3G\nn\np\n2\n\n+1G\nw" | fdisk $disk
: '
the line above deciphers to:
n -> new partition
p -> primary partition
1 -> partition number 1
+3G -> partition size of 3G
n -> new partition
p -> primary partition
2 -> partition number 2
+1G -> partition size of 1G
w -> write the changes to the disk
'

# Format the partitions with the ext4 filesystem
mkfs.ext4 "$disk"1
mkfs.ext4 "$disk"2

# Create the mount points
mkdir "$mount_point1"
mkdir "$mount_point2"

# Mount the partitions on the mount points
mount "$disk"1 "$mount_point1"
mount "$disk"2 "$mount_point2"

# set the block size for the partitions
tune2fs -b 4096 "$disk"1
tune2fs -b 512 "$disk"2

# give the partitions descriptive names
e2label "$disk"1 Didi
e2label "$disk"2 patara

# set the permissions on the first partition
chmod -x "$mount_point1"

# set the permissions on the second partition
chmod -s "$mount_point2"

# Set the maximum number of files that can be saved on the first partition
tune2fs -i 0 -c 1024 "$disk"1

# Determine the UUIDs of the partitions
uuid1=$(blkid "$disk"1 | awk -F'"' '{print $2}')
uuid2=$(blkid "$disk"2 | awk -F'"' '{print $2}')

# Add entries to the /etc/fstab file to mount the partitions automatically on boot
echo "$uuid1 $mount_point1 ext4 defaults,noexec 0 2" >> /etc/fstab
echo "$uuid2 $mount_point2 ext4 defaults 0 2" >> /etc/fstab