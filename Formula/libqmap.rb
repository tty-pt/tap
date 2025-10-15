class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-arm64.tar.gz"
    sha256 "40773c898096efdcab97e62e7ecfecd8b3342018e6fcf1fbcbec5bcdbc9cfac1"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-x86_64.tar.gz"
    sha256 "2f8129a7787cb98677be223bbe3b68d1eb345f676f379ed801b8ae35319d839e"
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
