FROM adoptopenjdk/openjdk8:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME = tes_javr_com_bot
ENV BOT_TOKEN = 1732200653:AAE_c46JMTbV9Ck7fCIYI5EUlQyJZvLEWBo
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}","-jar", "/app.jar"]