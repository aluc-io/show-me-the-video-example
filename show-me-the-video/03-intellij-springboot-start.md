[videoUrl]: https://show-me-the-video-example.herokuapp.com/example-video-03.mp4
[thumbnailUrl]: https://show-me-the-video-example.herokuapp.com/example-image-03.png
[tags]: idea,springboot
[author]: me@aluc.io
[duration]: 00:58
[prev]: ./02-intellij-basic-usage-setting.md
[next]: ./04-intellij-editorconfig.md
[createTime]: Jun-12-2016-16:23:00-GMT+0900
[updateTime]: null

# IntelliJ IDEA 에서 스프링부트 시작하기

[![video][thumbnailUrl]][videoUrl]

- Ultimate 버전에서는 Springboot 프로젝트를 생성할 수 있지만 Community 버전에선
  기능을 제공하지 않아 [Spring Initializr][spring_initializr] 사이트를 이용 후
  import 하는 방법으로 진행

- Spring Initializr 셋팅 예:
    - Gradle Project
    - JPA, JDBC

- Mysql DB 준비 및 테스트 데이터 삽입:

```sh
$ docker run -d -p5417:5417 mysql
```

```sql
CREATE TABLE...
```

[spring_initializr]: https://start.spring.io/
