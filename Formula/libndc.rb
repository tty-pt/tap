class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-arm64.tar.gz"
    sha256 "be55f61718e4bf36e469636c1b28dc1cae344b1cfa2a1690d3172d94ae6c765f"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-x86_64.tar.gz"
    sha256 "12bd4a0c9d0906d2e07ed551b19422fab3199320149334ea7fd050cdf9b14c80"
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
