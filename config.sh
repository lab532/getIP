# test
repo_dir=$(pwd)
user=$(whoami)
#echo $repo_dir
git config --global user.email 3016204248@tju.edu.cn
git config --global user.name lab532
python $repo_dir/config.py $2
git config credential.helper store

sudo touch $1
sudo chmod 666 $1


sed -i "5c echo \$ip \$(date) > \$repo_dir/$1" $repo_dir/update.sh
sed -i "6c git add ./$1" $repo_dir/update.sh
sed -i "7c git commit -m \"from $1\"" $repo_dir/update.sh


cd $repo_dir/.git
sudo chmod 777 -R *

sudo sed -i '$a * * * * * '$user' cd '$repo_dir' && /bin/sh update.sh' /etc/crontab
sudo service cron start
sudo service cron reload

