class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-brew-arm64.tar.gz"
    sha256 "9dfdd6a6993408f82f25cd970f56cead4cbabab68b331f05e943981b5e6f8dcf"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-brew-x86_64.tar.gz"
    sha256 "1a8143abbf02ce04cdf8f8c7a5390b27adfb652bc6d7987e4a33b99eb15ddfd0"
  end
  version "0.0.7"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
