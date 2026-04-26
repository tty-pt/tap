class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-arm64.tar.gz"
    sha256 "324d13710b2ced7af6b3ac60415ad1deef51532f548ad3d276b548a57532dd7e"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-x86_64.tar.gz"
    sha256 "bd54ebfe68e425017d46a99d4fdd60c060ed1b39a494ff9197d6c922a0a83ab6"
  end
  version "1.2.0"
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
