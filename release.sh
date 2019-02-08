CONTEXT_DIR=context-heroku
rm -rfv $CONTEXT_DIR
mkdir $CONTEXT_DIR
cp Dockerfile-heroku $CONTEXT_DIR/Dockerfile
cp download-static-resource.sh $CONTEXT_DIR/
cp index.html.template $CONTEXT_DIR/
cp mysite.template $CONTEXT_DIR/

cd $CONTEXT_DIR
heroku container:push web --arg CACHE_TAG=$(git describe)
heroku container:release web
