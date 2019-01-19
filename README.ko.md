# show-me-the-video-example
[show-me-the-video][smtv] 를 사용하는 git 저장소 예제.

## 예제 비디오, 이미지 Docker image build
video 와 image 는 `download-static-resource.sh` 스크립트를 통해 다운로드

```sh
$ docker build smtv-example-static:v1 .
```

## video 와 image 샘플이 들어있는 docker image 로 static 서버 구동

```sh
$ docker run -d -p8082:80 aluc-io/show-me-the-video-example:v1
```

## Generate thumbnail image from first frame

```sh
$ docker run --rm -v $PWD:/root -w /root jrottenberg/ffmpeg -i vidoe.mp4 -ss 00:00:00.0 -vframes 1 thumbnail.png
```

## Resize image

```sh
$ docker run --rm -v $PWD:/workdir --workdir /workdir jujhars13/docker-imagemagick mogrify -resize 64x -quality 100 -path resized.64 original/*.png
```

[smtv]: https://github.com/b6pzeusbc54tvhw5jgpyw8pwz2x6gs/show-me-the-video

