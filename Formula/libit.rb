class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.0/libit-1.2.0-brew-arm64.tar.gz"
    sha256 "bd4f2b0be39cad912aca4fc08e7c230eb8ad03da3d8a510754af709c0356b168"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.0/libit-1.2.0-brew-x86_64.tar.gz"
    sha256 "03767216d8f2b2c325b56fc778e98ae0d126c75c9a931b6092d0b69fe82caa82"
  end
  version "1.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
