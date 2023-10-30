FROM openjdk:17-jdk-alpine as build_image

# 작업 폴더 위치 설정
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME

# 실행시 필수 파일 복사
COPY gradlew $APP_HOME
COPY gradle $APP_HOME/gradle
COPY build.gradle $APP_HOME
COPY src src

# gradlew 빌드
RUN ./gradlew build
RUN ./gradlew bootjar

# Docker 이미지 실행
FROM openjdk:17-jdk-alpine
ENV TZ Asia/Seoul
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME

COPY --from=build_image $APP_HOME/build/libs/app.jar ./app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/app/app.jar"]