# show-me-the-video-example
Example git repository using [show-me-the-video][smtv].

![Docker Automated](https://img.shields.io/docker/automated/alucio/show-me-the-video-example.svg)
![Docker Build](https://img.shields.io/docker/build/alucio/show-me-the-video-example.svg)

- 한글가이드: [README.ko.md](./README.ko.md)

## Build example Docker image contains video, image
`download-static-resource.sh` download the example vidoes, images.

```sh
$ docker build smtv-example-static:v1 .
```

## Run nginx that serve example vidoes, images

```sh
$ docker run -d -p8082:80 alucio/show-me-the-video-example
```

- test this image url: http://127.0.0.1:8082/example-video-01.webp

## Tip1. Generate thumbnail image from first frame

```sh
$ docker run --rm -v $PWD:/root -w /root jrottenberg/ffmpeg -i vidoe.mp4 -ss 00:00:00.0 -vframes 1 thumbnail.png
```

## Tip2. Resize image

```sh
$ docker run --rm -v $PWD:/workdir --workdir /workdir jujhars13/docker-imagemagick mogrify -resize 64x -quality 100 -path resized.64 original/*.png
```

[smtv]: https://github.com/alucio/show-me-the-video

