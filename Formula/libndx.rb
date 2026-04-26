class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.2/libndx-1.2.2-brew-arm64.tar.gz"
    sha256 "f7b4511f74734dea0ed1b65b74fa688c141b55e6d4c869e3829a47a179d8182c"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.2/libndx-1.2.2-brew-x86_64.tar.gz"
    sha256 "dde3def47ab4eccc01d2e65614f3dfba96f4011ea44a637e0d4c2164032455f5"
  end
  version "1.2.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
