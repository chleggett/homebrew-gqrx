This is an effort to setup a homebrew formula for http://gqrx.dk. Feel free to file an issue or fork the repo to help me out.

It is NOT a "gnuradio and friends" repo. It will only include gqrx and will rely on other Formula for GNURadio and other dependancies.

I want to thank [titanous](https://github.com/titanous/homebrew-gnuradio), [robotastic](https://github.com/robotastic/homebrew-hackrf), [0x90](https://github.com/0x90/homebrew-megarf), and [metacollin](https://github.com/metacollin/homebrew-gnuradio) for their development and inspiration.

I invite each of them and all of their collaborators to help me get pull requests of gnuradio, gqrx, and other related formula into Homebrew.

More (most) importantly, I want to thank [csete](https://github.com/csete/gqrx) for his excellent GQRX software.

UPDATE: Until recently, I recommended [metacollin/homebrew-gnuradio](https://github.com/metacollin/homebrew-gnuradio) to satisfy the GNURadio dependancy. There is now an "official" GNURadio formula in the Homebrew repository. So, now I'm using that one. Also, I plan to submit this formula to Homebrew to make it "official" as well.

INSTALL
=======
First, install gnuradio.

```sh
brew install gnuradio
```

Second, Gqrx and version 0.5.3 of librtlsdr do not play nice. Until it is updated, we need to use the HEAD version.

```sh
brew install librtlsdr --HEAD
```

Third, tap my gqrx and gr-osmosdr repos:

```sh
brew tap chleggett/gqrx
brew tap chleggett/gr-osmosdr
```

Then, install gqrx:

```sh
brew install gqrx
```
