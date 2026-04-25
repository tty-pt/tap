class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-arm64.tar.gz"
    sha256 "638a7f41dc996bb064819d4f0453a820168b844a61adc636b91dbf49f2d7069b"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.2.0/libndc-1.2.0-brew-x86_64.tar.gz"
    sha256 "8860e673309b76dbb383a7e5de91b5b4b480d74bea1272bb71b22967b75ebe89"
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
