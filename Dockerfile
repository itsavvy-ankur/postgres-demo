FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
ENV VAULT_ADDR=changeme!
ENV VAULT_TOKEN=changeme!
ENV POSTGRES_HOST=changeme!
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.postgresdemo.PostgresDemoApplication"]