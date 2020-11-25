repo_dir=$(pwd)
cd $repo_dir
#python $repo_dir/getIpAddress.py
ip=$(ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:")
echo $ip $(date) > $repo_dir/pyb.txt
git add ./pyb.txt
git stash -u -k
git commit -m "from pyb.txt"
# git pull
git push origin master
git stash pop
