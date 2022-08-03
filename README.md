# My YouTube Project

---

1 - Create `.env` file in the root directory of your project. Database informations are required to create the 
database container

2 - Run the command `./docker-compose.sh`
If you have a permission issue, you can run first the command `sudo chmod u+x docker-compose.sh` and then run the previous command

---

The docker compose script will pull the database (postgres) image and build the microservices images if they are not 
already built. Then it will start the microservices containers based on the docker-compose.yml file.

- Postgres Database service : [postgres:9.6-alpine Docker image](https://hub.docker.com/_/postgres)
- API CRUD service : [git repo](https://github.com/emmanuel-sarpedon/etna-my-youtube.api.microservice/)
- Encode video service [git repo](https://github.com/emmanuel-sarpedon/etna-my-youtube.encode.microservice)

## Endpoints :

### `user.routes`
`﹒ 1 - [POST] /users - Register a new user`

`﹒ 2 - [POST] /auth - Login a user`

`﹒ 3 - [DELETE] /user/:id - Delete a user`

`﹒ 4 - [PUT] /user/:id - Update a user`

`﹒ 5 - [GET] /users - Get users by pseudo`

`﹒ 6 - [GET] /user/:id - Get user by id`

### `video.routes`
`﹒ 1 - [POST] /user/:id/video - Upload a video`

`﹒ 2 - [GET] /videos - Get videos`

`﹒ 3 - [GET] /user/:id/videos - Get videos by user id`

`﹒ 4 - [PATCH] /video/:id - Encode video`

`﹒ 5 - [PUT] /video/:id - Update video`

`﹒ 6 - [DELETE] /video/:id - Delete video`

### `comment.routes`
`﹒ 1 - [POST] /video/:id/comment - Create a comment`

`﹒ 2 - [GET] /video/:id/comments - Get comments`
