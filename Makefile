.PHONY: watch compile github

watch:
	scss --watch scss:css --style=compressed --sourcemap=none --compass

compile:
	scss --update scss:css --style=compressed --sourcemap=none --compass

deploy:
	cp css/checklist.css ../jrf-movement-node/src/views/css/main.css

github:
	git checkout gh-pages
	git checkout master -- index.html css/ images/
	git commit -am "Update static page content"
	git push origin gh-pages -u
	git checkout master
