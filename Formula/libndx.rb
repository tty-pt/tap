class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-arm64.tar.gz"
    sha256 "31a756c9fb7063417896588cfdc585529357902ea152be32162cd16cbf0160cb"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-x86_64.tar.gz"
    sha256 "7e14d8094d347d0ee63686718bfeb18eb70e88f3f1446350929ef0180474e782"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
