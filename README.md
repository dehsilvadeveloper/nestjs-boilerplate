# NestJs Application Boilerplate  🔥 🚀

This is a NestJS v9.x application boilerplate using a Dockerized environment.

## Build with

| Name       | Version  |
| ---------- | -------- |
| NestJs | v9.x |
| NodeJs | v19.8.x |
| Typescript | v5.0.x |
| NPM | v9.5.x |
| Docker | v20.10.x |
| Docker Compose | v3.8.x |
| Redis | v6.2.x |
| Mysql | v8.0.x |
| Postgresql | v12.x |
| MongoDB | v3.2.x |

## Objectives

* A health start for new applications
* Easy to maintenance
* NestJs learning
* Docker containers for NestJs, Redis and multiple databases types like Mysql, Postgresql and MongoDB.

## How to use

### Install

For start, clone the repository to your local environment. After that, run the following script:

`make app-install`

This script will build the containers and install the dependencies. After that, the application is ready to use on the url provided for the script.

You only need to make this procedure once.

### Starting the application

If you want to start the application, use the following script:

`make up`

This script will get up all Docker containers, making the application ready to use on the url provided for the script.

### Shutting down the application

If you want to stop the application, use the following script:

`make down`

This script will get down all Docker containers.

### About databases

The database options are the following: Mysql, Postgresql and MongoDB. They are commented on the **docker-compose** file for default. If you want to use one of them, uncomment the related code on the **docker-compose** file before starting up the application.

After that, you have to develop code to use the database selected, possibly using a ORM (*Object Relational Mapper*).

## What to do from here on?

Now that you have an enviroment ready for your NestJs application, then you need to start develop the application itself.

Happy coding!

## Available Scripts

#### `make help`

Show a list of scripts available to help the developer.

#### `make say-hello`

Show a welcome message to the developer.

#### `make app-install`

Execute the installation of the application, building the containers and installing the dependencies. After the end of the process, the application is ready to use. You only need to run this command once.

#### `make up`

Get up all Docker containers, making the application ready to use.

#### `make down`

Get down all Docker containers.

#### `make build`

Build images used on the Docker containers.

#### `make stop`

Show a list of avaliable Docker containers to stop. You have to select the one that you want to stop.

#### `make in`

Show a list of avaliable Docker containers to go inside. You have to select the one that you want to emter.
