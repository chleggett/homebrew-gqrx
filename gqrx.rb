require "formula"

class Gqrx < Formula
  homepage "http://gqrx.dk"
  url "https://github.com/csete/gqrx/archive/v2.4.tar.gz"
  sha256 "4c561083b3da9423c017ea4fbe7e12fedb0ba7c2065c17b8ac8a0f5403a5da9b"
 
  head "https://github.com/csete/gqrx.git"

  depends_on "pkg-config" => :build
  depends_on "gnuradio"
  depends_on "librtlsdr"
  depends_on "gr-osmosdr"
  depends_on "qt"

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
