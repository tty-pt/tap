class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-arm64.tar.gz"
    sha256 "bedf1fd8bdacdb46c8839328a0cb2b1501e81dbfb4e7fd3e5d81dd956d2c99ed"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-x86_64.tar.gz"
    sha256 "f9e0146dee17a0a8c719d0c00277f4104419c2ccc988dbb119c9bc2045faf1da"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
