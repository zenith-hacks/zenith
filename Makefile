help:
	@echo "This Makefile does various scripting jobs. You do not need to use it."

favicon:
	@echo "Using imagemagick to convert favicon.svg to favicon.ico..."
	magick -background transparent -define 'icon:auto-resize=16,24,32,64' static/favicon.svg static/favicon.ico