build:
	pelican -s pelican.conf.py content
upload: build
	rsync -e "ssh -p 22" -P -rvz --delete output/* alexis@172.19.2.119:/home/www/notmyidea.org/carnets
