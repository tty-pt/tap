class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.1/libbud-1.0.1-brew-arm64.tar.gz"
    sha256 "ee468306581319655fac1e86333cf67a9ac0ce131c3f4e30c49abcebe9b02104"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.1/libbud-1.0.1-brew-x86_64.tar.gz"
    sha256 "e5c421abfa4e3d10026f50ebed0990e9655cea6afc4ca666f9bc5bf1a0cf1579"
  end
  version "1.0.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
