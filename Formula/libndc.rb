class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-arm64.tar.gz"
    sha256 "8e04cbc5ee2d27286b5a320c86a09d6e852fcb355d228d0024db213e5d1a66d5"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-x86_64.tar.gz"
    sha256 "51de18bd03e346c5213574ba08181976e636fe6e4f4db80653a613d8115978f7"
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
