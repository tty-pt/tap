class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-arm64.tar.gz"
    sha256 "6d1e0ae8651e25c97681d11f160f1ca787b43aa94a50d1ef4cdd1c858b98cdb0"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-x86_64.tar.gz"
    sha256 "b692d4566de1a9b12b272eba9782a39df891f1f2869ad935fed78b69e01dbc31"
  end
  version "0.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
