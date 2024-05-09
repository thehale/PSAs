.PHONY: all

title ?= my-announcement

announcement:
	hugo new content $(title)/index.md