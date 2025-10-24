class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.1/libndx-0.1.1-brew-arm64.tar.gz"
    sha256 "9ecefe25dc53b6c179590fe1ffbf1569720ad7736745db3acad693a5ade32b1a"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.1/libndx-0.1.1-brew-x86_64.tar.gz"
    sha256 "3271925fd1b9a96fff741f3c81d00113c6f80c673b9a2d333dfe9323fee9e394"
  end
  version "0.1.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
