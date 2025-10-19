class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-arm64.tar.gz"
    sha256 "83c97cb10bb421e5e270434d3c5a0fa5f650fe0f9cceb8e038ebcdda57769f06"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-x86_64.tar.gz"
    sha256 "57bbe013542af237a29133bc6f4862342434c6a9785488b79effccca8ea7aab4"
  end
  version "0.16.0"
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
