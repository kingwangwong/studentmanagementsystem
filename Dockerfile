FROM openjdk:11
LABEL maintainer="student-management-system.com"
ADD target/student-management-system-0.0.1-SNAPSHOT.jar student-management-system.jar
ENTRYPOINT ["java", "-jar", "student-management-system.jar"]
ENTRYPOINT ["java", "-jar", "student-management-service.jar", "--server.port=${PORT}"]