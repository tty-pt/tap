class Ndc-tty < Formula
  desc "ndc-tty binary package"
  homepage "https://github.com/tty-pt/ndc-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-arm64.tar.gz"
    sha256 "d82f0eff4a489ca9b9cfdcfa6840fc76cf02871ee54d3861d5bc1d50e5d3dd25"
  else
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-x86_64.tar.gz"
    sha256 "b520f10f45b3da61e2eb8b461f464eb74e17678a2191465b1e45a1ea1bce045d"
  end
  version "1.0.0"
  depends_on "libndc"
  depends_on "libndx"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
