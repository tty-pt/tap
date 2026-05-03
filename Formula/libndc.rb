class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.3.1/libndc-1.3.1-brew-arm64.tar.gz"
    sha256 "8e519a909a56a69e0247ffe7687d75b8f285c98855fead80b887394750cf7fd9"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.3.1/libndc-1.3.1-brew-x86_64.tar.gz"
    sha256 "a2217f586a36eee53526aa3d3a6c42fae6fdb90057832df49e0620c650ae028d"
  end
  version "1.3.1"
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
