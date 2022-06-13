branch=main
git clone -b $branch https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp ultroid/.env.samlple /root/TeamUltroid/.env.sample
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env.sample --rm -i ultroid
