require "formula"

class Gqrx < Formula
  homepage "http://gqrx.dk"
  url "https://github.com/csete/gqrx/archive/v2.3.1.tar.gz"
  sha1 "d24595601c79c894601eaa3cc36d9838134616fe"

  depends_on 'gnuradio'
  depends_on 'gr-osmosdr'
  depends_on 'qt'

  def install
    args = "PREFIX=#{prefix}"
    mkdir "build" do
      system "qmake",  *args, ".."
      system "make"
    end
    Dir.glob("build/*.app") { |app| mv app, prefix }
  end

  test do
    system "false"
  end
end
