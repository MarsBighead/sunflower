docker build -t sunflower  . 
#docker start redis
docker run -d -p 4000:80 \
  -v /home/hbu/sunflower:/app \ 
  --link redis:redis \
  --name hello sunflower \  
  python app.py
