branch=main
git clone $branch main https://github.com/Randi356/Ultroid /root/Randi356
cp ultroid/.env /root/Randi356/.env
cd /root/Randi356
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
--env-file .env --rm -i ultroid
