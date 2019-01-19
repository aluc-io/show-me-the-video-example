# show-me-the-video-example
[show-me-the-video][smtv] 를 사용하는 git 저장소 예제.

![Docker Automated](https://img.shields.io/docker/automated/alucio/show-me-the-video-example.svg)
![Docker Build](https://img.shields.io/docker/build/alucio/show-me-the-video-example.svg)

## 예제 비디오, 이미지 Docker image build
video 와 image 는 `download-static-resource.sh` 스크립트를 통해 다운로드 함.

```sh
$ docker build smtv-example-static:v1 .
```

## 비디오와 이미지 샘플이 들어있는 docker image 로 nginx 서버 구동

```sh
$ docker run -d -p8082:80 aluc-io/show-me-the-video-example:v1
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

