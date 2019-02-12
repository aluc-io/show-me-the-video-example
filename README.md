# show-me-the-video-example

<!--
[![Docker Automated](https://img.shields.io/docker/automated/alucio/show-me-the-video-example.svg)][dockerurl]
[![Docker Build](https://img.shields.io/docker/build/alucio/show-me-the-video-example.svg)][dockerurl]
-->
[![Docker Pulls](https://img.shields.io/docker/pulls/alucio/show-me-the-video-example.svg?style=flat-square)][dockerurl]
[![Docker Layers](https://img.shields.io/microbadger/layers/alucio/show-me-the-video-example/latest.svg?style=flat-square)][dockerurl]
[![Docker Size](https://img.shields.io/microbadger/image-size/alucio/show-me-the-video-example/latest.svg?style=flat-square)][dockerurl]
[![Heroku deploy](https://heroku-badge.herokuapp.com/?app=show-me-the-video-example&style=flat&svg=1)][heroku]

- Example **backend git repository** of [show-me-the-video][smtv]
- 한글가이드: [README.ko.md](./README.ko.md)

## Build example Docker image contains video, image
`download-static-resource.sh` download the example vidoes, images.

```sh
$ docker build smtv-example-static:v1 .
```

## Run nginx to serve example vidoes, images on local

```sh
$ docker run -d -p8082:80 --env PORT=80 alucio/show-me-the-video-example
```

- test this image url: http://127.0.0.1:8082/example-image-01.webp

## Release using Heroku

```sh
$ git commit -m msg
$ git tag <tag>
$ yarn run release
```

## Tip1. Generate thumbnail image from first frame

```sh
$ docker run --rm -v $PWD:/root -w /root jrottenberg/ffmpeg -i vidoe.mp4 -ss 00:00:00.0 -vframes 1 thumbnail.png
```

## Tip2. Resize image

```sh
$ docker run --rm -v $PWD:/workdir --workdir /workdir jujhars13/docker-imagemagick mogrify -resize 64x -quality 100 -path resized.64 original/*.png
```

[smtv]: https://github.com/alucio/show-me-the-video
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video-example
[heroku]: https://show-me-the-video-example.herokuapp.com/

