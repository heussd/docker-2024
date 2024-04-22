# ⚠ This file contains anti-patterns for demonstration purposes

FROM ubuntu

RUN apt-get update && apt-get install -y git apache2

WORKDIR /var/www/html/

# In typical CI/CD scenarios, we would not need to clone other repositories, because the pipeline has already done that for us.
RUN git clone https://github.com/oscarmorrison/md-page 
RUN git clone https://github.com/artslob/fallout-svg

COPY . ./

# Demonstration purposes
RUN echo "Sleeping" && sleep 5

RUN echo '<script src="md-page/md-page.js"></script><noscript>' > 'index.html' && \
	cat "readme.md" >> 'index.html'

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
