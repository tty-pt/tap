class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-arm64.tar.gz"
    sha256 "084a46b546b73b745375b1aecc53ea840d5de70381389ab6f0746a5fbeb3ae8d"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-x86_64.tar.gz"
    sha256 "9695ad87eabbc66ba054109ebfb2bfd8fab03b8968edd85873008f729b4d774e"
  end
  version "0.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
