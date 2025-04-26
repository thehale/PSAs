.PHONY: all

hugo_version ?= 0.147.0
setup-ubuntu:
#   The `hugo` download contains a LICENSE and README.md file.
#
#   Extracting to a tmp folder protects against overwriting this project's
#   LICENSE and README.md
	mkdir -p ./tmp
	wget -O - https://github.com/gohugoio/hugo/releases/download/v$(hugo_version)/hugo_extended_$(hugo_version)_linux-amd64.tar.gz \
		| tar -xz --directory ./tmp
	mv ./tmp/hugo ./hugo
	rm -rf ./tmp

title ?= my-announcement
announcement:
	./hugo new content $(title)/index.md

clean:
	rm -rf public
	rm -rf resources

build:
	./hugo

run:
	./hugo server --bind 0.0.0.0