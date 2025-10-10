class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-arm64.tar.gz"
    sha256 "4881bfd4b054dd332c3fd99187503c966b9e3ced59249dffc1dac54a7f883054"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-x86_64.tar.gz"
    sha256 "1061b0f22c62c2ebf6d12113fa04731ed52a120c75d61de0858d3063b7fd3784"
  end
  version "0.0.7"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
