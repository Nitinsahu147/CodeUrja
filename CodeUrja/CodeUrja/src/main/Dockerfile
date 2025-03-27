# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0

# Copy your WAR file to Tomcat’s webapps directory
COPY target/YOUR_PROJECT_NAME.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
