FROM httpd:2.4.59 AS httpd
FROM alpine/git:2.43.0 AS git

FROM git AS git1
WORKDIR /workdir/md-page
RUN     git clone https://github.com/oscarmorrison/md-page . && \
		git reset 36eef73bbbd35124269f5a8fea3b5117cd7a91a3

FROM git AS git2
WORKDIR /workdir/fallout-svg
RUN		git clone https://github.com/artslob/fallout-svg . && \
		git reset d1dad0950073bdef8cac463f8a87246f45af0ca0


FROM git as build

WORKDIR /workdir

COPY	readme.md ./

RUN 	echo '<script src="md-page/md-page.js"></script><noscript>' > 'index.html' && \
			cat "readme.md" >> 'index.html'


FROM httpd

WORKDIR /usr/local/apache2/htdocs/

COPY --from=git1 /workdir/md-page/md-page.js ./md-page/md-page.js
COPY --from=git2 /workdir/fallout-svg/vault-boy.svg ./fallout-svg/vault-boy.svg
COPY --from=build /workdir/index.html ./


EXPOSE 80

