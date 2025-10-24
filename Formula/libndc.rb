class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.0/libndc-0.18.0-brew-arm64.tar.gz"
    sha256 "699f2e0a3ad4191e2f95edea64900ccf33b96eab60e2027e48bed53cffb25dd5"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.0/libndc-0.18.0-brew-x86_64.tar.gz"
    sha256 "2b5e6b582f229f34c1ae47152ba98e49076ee13a358d7749b1c6d95a489328a9"
  end
  version "0.18.0"
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
