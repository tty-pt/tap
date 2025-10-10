class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-arm64.tar.gz"
    sha256 "4881bfd4b054dd332c3fd99187503c966b9e3ced59249dffc1dac54a7f883054"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-x86_64.tar.gz"
    sha256 "dd9538930dc6c53aec87bc37ca5d41fb88f97b7ee767b9b6ec13a7e51d88f8e2"
  end
  version "0.0.7"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
