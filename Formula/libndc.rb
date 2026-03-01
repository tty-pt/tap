class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-arm64.tar.gz"
    sha256 "821fe67d29092cf07829735f27de85480ba685a62c7df84f28fe538fc65e938f"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-x86_64.tar.gz"
    sha256 "c72391b1c1583c85f6f115025471d14d515bed4d186e33b933f0486084678586"
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
