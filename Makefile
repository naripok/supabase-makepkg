build:
	makepkg

install:
	makepkg --install

clean:
	rm -rf src pkg cli
	rm -f *.pkg.tar*
