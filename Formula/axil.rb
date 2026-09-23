class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-arm64.tar.gz"
    sha256 "f52cbb4f0399e4bfec1a235d07aea2b772ba37c989636e32a6c946619fd79929"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-x86_64.tar.gz"
    sha256 "533db7697e52a4059339a7bbf06ab08ec6ef6d8f5eb0a17cb06231e27138f1cb"
  end
  version "1.4.0"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
