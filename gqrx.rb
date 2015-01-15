require "formula"

class Gqrx < Formula
  homepage "http://gqrx.dk"
  url "https://github.com/csete/gqrx/archive/v2.3.2.tar.gz"
  sha1 "23680d9527aca135c2952ab17873ab716e379ac6"

  head "https://github.com/csete/gqrx.git"

  depends_on 'pkg-config' => :build
  depends_on 'gnuradio'
  depends_on 'librtlsdr'
  depends_on 'gr-osmosdr'
  depends_on 'qt'

  def install
    args = "PREFIX=#{prefix}"
    mkdir "build" do
      system "qmake", "..", *args
      system "make"
    end
    Dir.glob("build/*.app") { |app| mv app, prefix }
  end

  test do
    system "false"
  end
end
