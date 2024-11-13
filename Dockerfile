# Use the official Perl image as the base
FROM perl:5.32

# Install the required module for the web server
RUN cpan install HTTP::Server::Simple

# Set the working directory
WORKDIR /app

# Copy the app.pl file to the container
COPY app.pl .

# Expose port 8081
EXPOSE 8081

# Command to run the program
CMD ["perl", "app.pl"]
