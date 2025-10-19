class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-arm64.tar.gz"
    sha256 "88d95f5843674aefaddb0b0db5f2987c5df1b48e5fc94951478fbf607eb5a840"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-x86_64.tar.gz"
    sha256 "09d6b13881975ae4e8050f3ea9093c90d38535b69796878e4794eab1f205a367"
  end
  version "0.17.0"
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
