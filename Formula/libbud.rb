class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.2/libbud-1.2.2-brew-arm64.tar.gz"
    sha256 "9dd1185b32999bf8e7df601ebc1099cc41b7fe75e22d513aac8910f9e5397190"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.2/libbud-1.2.2-brew-x86_64.tar.gz"
    sha256 "259996a8278f45effee9972516fa131f181b84caad37a4f2220f1bea1699f527"
  end
  version "1.2.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
