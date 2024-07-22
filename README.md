# Docker Image for Apache2

This Docker image allows you to run Apache2 web server on Ubuntu.

## Maintainer

MJ - mohammadjavadasnaashari@gmail.com

## Features

- Based on Ubuntu
- Installs Apache2
- Installs PHP 7.4
- Includes Vim for any command-line text editing needs

## Usage

1. **Build the Docker image:**

   ```bash
   docker build -t apache2-ubuntu .

2. **Run the Docker image:**

   ```bash
   docker run -d -it -p 8080:80 -v $(pwd)/info.php:/var/www/html/info.php apache2-ubuntu

