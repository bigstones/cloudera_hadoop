# 각 서버마다 설정해줘야하는게 조금씩 달라요

echo '# 127.0.0.1 localhost

# 192.168.0.[] nn.privhadoop.com nn
# 192.168.0.[] dn01.privhadoop.com dn01
# 192.168.0.[] dn02.privhadoop.com dn02
# 192.168.0.[] dn03.privhadoop.com dn03
# 192.168.0.[] dn04.privhadoop.com dn04' > /etc/hosts # <-- []칸에 원하시는 ip 주소 0~255까지 중에 넣어주세요

# echo HOSTNAME=<hostname>.privhadoop.com >> /etc/sysconfig/network # <--<>안에각각의 hostname으로 수정해서 실행시켜 주셔야해요

sudo iptables-save > ~/firewall.rules
sudo systemctl disable firewalld
sudo systemctl stop firewalld

sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config
setenforce 0

yum -y install ntp

sudo systemctl start ntpd
sudo systemctl enable ntpd
hwclock --systohc

#echo '[cloudera-repo]
name=cloudera-repo
baseurl=http://192.168.0.[]/cloudera-repos/cm6/6.3.1/redhat7/yum/ # <-- 여기에 있는 []안에는 namenode ip 입력해주셔야해요
gpgkey=http://192.168.0.[]/cloudera-repos/cm6/6.3.1/redhat7/yum/RPM-GPG-KEY-cloudera # <-- 여기에 있는 []안에는 namenode ip 입력해주셔야해요
gpgcheck=1
enabled=1' > /etc/yum.repos.d/cloudera-repo.repo

echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabledsysctl

echo 'echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled' >> /etc/rc.local

ehco vm.swappiness=0 >> /etc/sysctl.conf

sysctl -w vm.swappiness=0

