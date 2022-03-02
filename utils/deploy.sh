set -e

yarn build

cd dist

git init
git checkout -b main
git add -A
git commit -m 'deploy'

push -f git@github.com:marypopplns/blog_client2.git main:gh-pages

cd -