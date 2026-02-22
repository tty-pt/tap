class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-arm64.tar.gz"
    sha256 "6d20c6fd34c037eaf3e49eb5ef6f199d07bdb1ac23c874fd584093e694940d64"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-x86_64.tar.gz"
    sha256 "cc5e257485f36dc92cd78e401a6fe3dec0c389575f7f47762b42528b1ff22cb7"
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
