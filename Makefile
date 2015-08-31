.PHONY: watch

watch:
	scss --watch scss:css --style=compressed --sourcemap=none

compile:
	scss --update scss:css --style=compressed --sourcemap=none

github:
	git checkout gh-pages
	git checkout master -- index.html css/checklist.css
	git commit -am "Update static page content"
	git push origin gh-pages -u
	git checkout master
