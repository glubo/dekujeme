FROM lipanski/docker-static-website:latest

COPY index.html .

CMD ["/thttpd", "-D", "-h", "0.0.0.0", "-p", "8080", "-d", "/home/static", "-u", "static", "-l", "-", "-M", "60"]
