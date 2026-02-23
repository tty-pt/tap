class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-arm64.tar.gz"
    sha256 "578e2dfe2faee25fd19d4b626006ae4c873f1779e6b831d673191fb333978192"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-x86_64.tar.gz"
    sha256 "17eaa49752437e70db76e78a323fc908711f314ab386274b5becdba44ea0a510"
  end
  version "1.0.0"
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
