# Use official OpenJDK image
FROM openjdk:11

WORKDIR /app

COPY Main.java .

RUN javac Main.java

CMD ["java", "Main"]
