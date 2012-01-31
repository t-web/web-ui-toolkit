WEB_UI_TOOLKIT_LESS = ./less/web-ui-toolkit.less
WEB_UI_TOOLKIT_TESTS_DIR = ./tests
LESSC = lessc

build: clean
	mkdir -p dist/images
	mkdir -p dist/stylesheets
	mkdir -p dist/javascripts
	${LESSC} ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.css
	${LESSC} --compress ${WEB_UI_TOOLKIT_LESS} > dist/stylesheets/web-ui-toolkit.min.css

test:
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/clearfix/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/clearfix/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/center-block/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/center-block/style.css
	${LESSC} ${WEB_UI_TOOLKIT_TESTS_DIR}/border-radius/style.less > ${WEB_UI_TOOLKIT_TESTS_DIR}/border-radius/style.css

clean:
	rm -rf dist/images
	rm -rf dist/stylesheets
	rm -rf dist/javascripts

.PHONY: dist clean build
