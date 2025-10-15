class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-arm64.tar.gz"
    sha256 "89ed732abb3e44b81810a769d93e44b8c5f312ed35e694fc35650e59c41b24cd"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-x86_64.tar.gz"
    sha256 "97f4c6b7633ba22a9990df0e6cd46678abe0bf448e90e06e5f0c6bf20006f2d1"
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
