## build new container
`docker build -f Dockerfile -t dinopetrone/heroku .`

## run container
`docker run -i -t dinopetrone/heroku /bin/bash`

## push container
`docker push dinopetrone/heroku:latest`
