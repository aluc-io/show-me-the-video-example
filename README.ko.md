# show-me-the-video-example

[![Docker Pulls](https://img.shields.io/docker/pulls/alucio/show-me-the-video-example.svg?style=flat-square)][dockerurl]
[![Docker Layers](https://img.shields.io/microbadger/layers/alucio/show-me-the-video-example/latest.svg?style=flat-square)][dockerurl]
[![Docker Size](https://img.shields.io/microbadger/image-size/alucio/show-me-the-video-example/latest.svg?style=flat-square)][dockerurl]
[![Heroku deploy](https://heroku-badge.herokuapp.com/?app=show-me-the-video-example&style=flat&svg=1)][heroku]

- [show-me-the-video][smtv] 의 백엔드 git 저장소 예제

## 예제 비디오, 이미지 Docker image build
video 와 image 는 `download-static-resource.sh` 스크립트를 통해 다운로드 함.

```sh
$ docker build smtv-example-static:v1 .
```

## 비디오와 이미지 샘플이 들어있는 docker image 로 nginx 로컬 서버 구동

```sh
$ docker run -d -p8082:80 --env PORT=80 alucio/show-me-the-video-example
```

- test this image url: http://127.0.0.1:8082/example-image-01.webp

## Heroku 로 배포

```sh
$ git commit -m msg
$ git tag <tag>
$ yarn run release
```

## Tip1. 비디오 파일 첫 프레임을 이미지로 저장

```sh
$ docker run --rm -v $PWD:/root -w /root jrottenberg/ffmpeg -i vidoe.mp4 -ss 00:00:00.0 -vframes 1 thumbnail.png
```

## Tip2. 이미지 리사이즈

```sh
$ docker run --rm -v $PWD:/workdir --workdir /workdir jujhars13/docker-imagemagick mogrify -resize 64x -quality 100 -path resized.64 original/*.png
```

[smtv]: https://github.com/aluc-io/show-me-the-video
[dockerurl]: https://hub.docker.com/r/alucio/show-me-the-video-example
[heroku]: https://show-me-the-video-example.herokuapp.com/

