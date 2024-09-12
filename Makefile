SUBSET_ARGS = --flavor="woff2" --desubroutinize --recalc-bounds --recalc-average-width --name-IDs='*'
INSTANCER_ARGS = --downgrade-cff

.PHONY: fonts

help:
	@echo "This Makefile does various scripting jobs. You do not need to use it."
	@echo "Check the README for what this Makefile does."

static/favicon.ico: 
	@echo "Using imagemagick to convert favicon.svg to favicon.ico..."
	magick -background transparent -define 'icon:auto-resize=16,24,32,64' static/favicon.svg static/favicon.ico

fonts:
	@echo "Using pyft to strip fonts..."
	mkdir -p .fonts
	pyftsubset raw-fonts/SpaceGrotesk.woff2 $(SUBSET_ARGS) --text="ZENITH 205" --output-file=.fonts/SpaceGrotesk-title-subset.woff2 --layout-features='kern,liga,ss02,ss03,ss04,ss05'
	pyftsubset raw-fonts/SpaceGrotesk.woff2 $(SUBSET_ARGS) --unicodes=20-7e --output-file=.fonts/SpaceGrotesk-subset.woff2 --layout-features='kern,liga,ss02,ss03,ss04,ss05'
	pyftsubset raw-fonts/InstrumentSans.ttf $(SUBSET_ARGS) --unicodes=20-7e --output-file=.fonts/InstrumentSans-asciionly-subset.woff2 --layout-features='kern,liga'
	pyftsubset raw-fonts/InstrumentSans.ttf $(SUBSET_ARGS) --unicodes="U+0020-007F, U+2000-206F, U+2070-209F, U+20A0-20CF, U+2100-214F, U+2200-22FF, U+FB00-FB4F, U+2190-21BB" --output-file=.fonts/InstrumentSans-mostlang-subset.woff2 --layout-features='*'
	fonttools varLib.instancer $(INSTANCER_ARGS) .fonts/SpaceGrotesk-title-subset.woff2 wght=300:700:700 -o src/lib/fonts/SpaceGrotesk-title-subset-instanced.woff2
	fonttools varLib.instancer $(INSTANCER_ARGS) .fonts/SpaceGrotesk-subset.woff2 wght=700:700:700 -o src/lib/fonts/SpaceGrotesk-subset-instanced.woff2
	fonttools varLib.instancer $(INSTANCER_ARGS) .fonts/InstrumentSans-asciionly-subset.woff2 wght=400:400:400 wdth=100:100:100 -o src/lib/fonts/InstrumentSans-asciionly-subset-instanced.woff2 
	fonttools varLib.instancer $(INSTANCER_ARGS) .fonts/InstrumentSans-mostlang-subset.woff2 wght=400:400:400 wdth=100:100:100 -o src/lib/fonts/InstrumentSans-mostlang-subset-instanced.woff2 