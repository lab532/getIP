repo_dir=$(pwd)
cd $repo_dir
git pull #python $repo_dir/getIpAddress.py
ip=$(ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:")
echo $ip $(date) > $repo_dir/ash.txt
git add ./ash.txt
git commit -m "from ash.txt"
git push origin master
