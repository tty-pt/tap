class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.2/libndc-0.15.2-brew-arm64.tar.gz"
    sha256 "b2188d8bfcc2d1bfd6f575379733bca113dd497c87a0bf2462aacf8cb3a010b0"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.2/libndc-0.15.2-brew-x86_64.tar.gz"
    sha256 "9a52b10e63bf8de537d8f22d0222033bcdf44fe381b709c4063e9a0fa88a6dad"
  end
  version "0.15.2"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
