[videoUrl]: https://show-me-the-video-example.herokuapp.com/example-video-05.mp4
[thumbnailUrl]: https://show-me-the-video-example.herokuapp.com/example-image-05.webp
[tags]: idea,java,lombok
[author]: me@aluc.io
[duration]: 01:58
[prev]: ./04-intellij-editorconfig.md
[next]: ./06-intellij-hot-swap.md
[createTime]: Jun-12-2018-16:43:00-GMT+0900

# JAVA 코드를 클린하게 해주는 lombok

[![video][thumbnailUrl]][videoUrl]

- [Lombok][lombok] 은 에디터와 빌드도구에 자동으로 연결되어 JAVA 코드를
  더 돋보이게 해주는 프로젝트.

- 단순 반복작업이고 의미없이 코드양만 증가시키는 Getter, Setter 를 아래와 같이
  사용 할 수 있음.

```java
@Getter @Setter private String id;
@Getter @Setter private String name;
@Getter @Setter private int age;
@Getter @Setter private boolean paidUser;
```

- IDE 들이 저 `@Getter` 와 같은 어노테이션을 해석하여 `getId()` 와 같은 메소드를
  사용할때 에러 없이 auto complete 기능 등이 잘 지원되기 위해선 lombok Plugin 이
  필요.

- 참고로 `boolean` 타입은 `getPaidUser()` 가 아닌 `isPaidUser()` 메소드가 생성됨.

[lombok]: https://projectlombok.org/

