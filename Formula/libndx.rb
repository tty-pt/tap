class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-arm64.tar.gz"
    sha256 "02601629d637de33451e840a8d4be294667ec74db4426f0df10786740125b6e4"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-x86_64.tar.gz"
    sha256 "3f81b68e8bacd16ebeb0c88c1130cd017e1d5032c1e5a61d17dc9e77499858ec"
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
