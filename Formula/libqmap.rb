class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.3.1/libqmap-1.3.1-brew-arm64.tar.gz"
    sha256 "eae3176e83d0b51fecc7ca7e4ea9ef281620fe4c606ff367ed1f70d53c0e7aba"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.3.1/libqmap-1.3.1-brew-x86_64.tar.gz"
    sha256 "58fa4881ee647dff906f74b18006563e0648afb1907cc0caba5cdb89383a31b3"
  end
  version "1.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
