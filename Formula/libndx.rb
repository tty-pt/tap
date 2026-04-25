class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.1/libndx-1.2.1-brew-arm64.tar.gz"
    sha256 "99533751c11c12bb4378d0b631ff7699af29a4763e1866acf63c10393e4584cf"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.1/libndx-1.2.1-brew-x86_64.tar.gz"
    sha256 "a977d84dd6ff5868fa111b6fc4ea470c3edf08e77d0c0ce74abf9a45d69234e9"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
