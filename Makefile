.PHONY: all

title ?= my-announcement

announcement:
	hugo new content $(title)/index.md

clean:
	rm -r public
	rm -r resources

build:
	hugo