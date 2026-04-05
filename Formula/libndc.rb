class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.1/libndc-1.0.1-brew-arm64.tar.gz"
    sha256 "fdaade3aa3a7be8bdb302cc5b9cdd2f2f75936b276ccfc0c5e9f72909e1aa06b"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.1/libndc-1.0.1-brew-x86_64.tar.gz"
    sha256 "6bd61e570c740da90dd3d7a44b36567be5465d0111a3d8ac27da9cee031ff80a"
  end
  version "1.0.1"
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
