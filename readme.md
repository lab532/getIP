This repo is used for students of lab532 to get IP address of their server.
### How to use ?
1. clone this repo

	`git clone https://github.com/lab532/getIP.git`

2. configure environments

	`cd getIP`

	`sh config.sh ID_name.txt password ID`

	For example `sh config.sh 1_hiedean.txt password 1`

	Please ensure the name is unique in this repo, and the ID means which minute/hour your IP address will be updated.

	Contact me to get the password, and decide ID, just for safety.

	You can also check `.txt` files in this repo to decide an ID.

	During the config, it needs sudo password of your server to get some permissions, but the script will not upload your password, you can relax.

3. Check your IP address at https://github.com/lab532/getIP/blob/master/ID_name.txt