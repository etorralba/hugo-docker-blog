
# Get hugo image based on  alpine and name it "hugobase"
FROM klakegg/hugo:ext-alpine as hugobase

COPY ./hugostart.sh /
RUN chmod +x /hugostart.sh
ENTRYPOINT ["/hugostart.sh"]
EXPOSE 1313

FROM nginx
COPY static-html-directory /usr/share/nginx/html