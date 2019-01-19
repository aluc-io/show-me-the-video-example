[videoUrl]: http://127.0.0.1:8082/example-video-04.mp4
[thumbnailUrl]: http://127.0.0.1:8082/example-image-04.webp
[tags]: idea,editconfig
[author]: me@aluc.io
[duration]: 00:58
[prev]: ./03-intellij-springboot-start.md
[next]: ./05-intellij-lombok.md

# editorconfig 사용으로 코드 파일 컨벤션 정의

[![video][thumbnailUrl]][videoUrl]

- 파일의 Indentation, 개행문자, 인코딩 설정을 통일하는 것은 코드 작성의 기본
  이지만 이런 컨벤션을 구두나 문서로만 관리해서는 지켜지기 어려움.

- IDE 의 formatter 를 공유하거나 셋팅을 가이드 하는 방법은 IDE 종속성이 생기고
  개발자마다 사용하는 모든 IDE 를 커버할 수 없으므로 역시 어려움.

- [editorconfig][editorconfig] 는 `.editorconfig` 란 정의 파일로 문서의 형식을
  정의한다. 그리고 각 IDE 혹은 IDE의 Plugin 에서 이 정의 파일을 읽어 자동으로
  에디터 셋팅을 변경함.

- 이 영상은 `.editorconfig` 파일을 프로젝트 루트 디렉토리에 생성하고
  IntelliJ IDEA editorconfig plugin 을 통해 에디터 설정을 하는 방법을 설명

- 아쉬운 것은 각 IDE 나 Plugin 들이 editorconfig 의 모든 설정을 지원하지는 않으므로
  어떤 설정을 지원하는지 확인해야함.

[editorconfig]: https://editorconfig.org/
