repo_dir=$(pwd)
cd $repo_dir
git pull #python $repo_dir/getIpAddress.py
ip=$(ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:")
echo $1"min/hour update" $ip $(date) > $repo_dir/hiedean.txt
git add ./hiedean.txt
# git stash -u -k
git commit -m "from hiedean.txt"
# git pull
git push origin master
# git stash pop
