class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.1/libndc-0.18.1-brew-arm64.tar.gz"
    sha256 "db2f8d8c2af341af4e9e909215c859692c41871204584be76c55868d45d7c9e9"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.1/libndc-0.18.1-brew-x86_64.tar.gz"
    sha256 "dcfc45777c8058b22c01f412737c2fb141dcf8372e27b4491dfefc1a7fb15460"
  end
  version "0.18.1"
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
