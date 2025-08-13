# install AWS CLI
sudo apt install awscli -y

# AWS command
aws --version
aws --help

# Configure user for AWS
aws configure
# for this, you should prepare the Access key and private key from your AWS console.
# also prepare the region, and the preferred the format. The region should match the region of your AWS account.
# DO NOT show this to anybody

# show user in aws cli
aws sts get-caller-identity

# show instances on the account
aws ec2 get-instances

# EBS: Elastic block storage
# Create a volume in the AWS console and mount it to the instance, in my example it is called xvdf1

# Show all disks
fdisk -l

# partition the disk
fdisk /dev/xvdf1
option: p #print the partition
option: n #create a new partition from the volume --> p --> enter --> enter
#  enter the rest of the option as empty for default options (all the disk will be partiioned)
option: w #to write the disk and save changes

# apply a partition type to the disk: e.g. ext4, fat, etc.
# in this example I will give the disk a type of ext4 since it is for general purpose
mkfs.ext4 /dev/xvdf1

#mount data into the disk, for example we will mount /var/www/html/images into the disk
#before that, however, you should create a backup to the files, use /tmp/
#mounting means placing the file system of the OS into the disk, meaning data will be stored there instead. 

mkdir /tmp/backup-images/
mv /var/www/html/images/* /tmp/backup-images/
mount /dev/xvdf1 /var/www/html/images

#this is, however, is only temporary. To permanently mount data, you should edit /etc/fstab then run mount -a
# edit /etc/fstab and add this line:
/dev/xvdf1	/var/www/html/images	ext4	defaults	0 0 #default: dont dump
mount -a #then run this


# SNAPSHOTS: creates a backup for a certain volume
# we can create a volume from a snapshot
# IMPORTANT: always mount the directory you want to backup before you want to write anything from it.
# e.g. when trying to backup mysql server:

mkdir /var/lib/mysql
mount /dev/xvdf /var/lib/mysql
dnf install mariadb105-server -y
systemctl start mariadb

#what the commands above does is that it mounted the disk to the dir first before it is being written with the data from mysql
#this way, the mounted disk can also store the data written into it

