# notejam

#Simple Docker local run
docker build -t notejam .
docker volume create --name notejamvol --opt type=none --opt device=/tmp/notejamvol --opt o=bind
docker run --rm  -it --mount source=notejamvol,target=/opt/app/notejam -p 5000:5000 notejam
