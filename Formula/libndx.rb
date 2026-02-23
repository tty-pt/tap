class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-arm64.tar.gz"
    sha256 "6472c5fde53b71a415b971e7967a25a7969b2f3c139ae32bf4cbf12a942e6cbe"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-x86_64.tar.gz"
    sha256 "50557d80605f478ce8561f0aa707ebc3c0ba9c4cf53613852dbc6a2f62eaf022"
  end
  version "0.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
