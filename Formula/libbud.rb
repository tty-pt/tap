class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-arm64.tar.gz"
    sha256 "0694a486768684c42902095b9471cf61c269f8bf376278ac6df03f8e95468e72"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-x86_64.tar.gz"
    sha256 "2171e1d2c549831cd794b803e97f5fa97a8ea1a1b696904c33eca8b6b90000a2"
  end
  version "1.2.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
