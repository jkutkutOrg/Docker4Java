FROM amazoncorretto:18.0.2-alpine3.16

# Set working directory
WORKDIR /app

# Copy the jar files
COPY Java-Text_Analyzer/jars/ /jars

# Define the entrypoint
ENTRYPOINT ["java", "-cp", "/jars/text_analyzer.jar", "com.jkutkutorg.textAnalyzer.Main", "java", "/jars/analyzer.jar"]