INSTALL_PATH = "/home/genie/github/www"

setup:
	bundle install

serve:
	bundle exec jekyll serve

build:
	export JEKYLL_ENV="production" && bundle exec jekyll build

publish: build
	rsync -avzc --delete _site/ ${INSTALL_PATH}
