class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-arm64.tar.gz"
    sha256 "b315284192b5138c03494c5f42db1a5d1c89ab149860de21dddc78066287f62d"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-x86_64.tar.gz"
    sha256 "0e9f47130a39f307c0e57093afb86a60f2ae4536ecbe94b90b75cbb1a9e2c4b7"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
