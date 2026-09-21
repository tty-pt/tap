class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-arm64.tar.gz"
    sha256 "1631c38792172a59cfe7fd8bd8240a9c88a03987f16dcec1e3a862c0521a3150"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-x86_64.tar.gz"
    sha256 "ba70acac468e0d6e300a4e528c5ada222421e62775768e6138ee9fdb74d14e7d"
  end
  version "1.4.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
