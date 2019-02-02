sed -e "s/%VERSION%/$(git describe)/g" index.html.template > index.html
heroku container:push web
heroku container:release web
