class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-arm64.tar.gz"
    sha256 "4881bfd4b054dd332c3fd99187503c966b9e3ced59249dffc1dac54a7f883054"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-x86_64.tar.gz"
    sha256 "6743552231763aad170d4d257c9b3ed20ab13d7c698ecd119a478345ccc8a488"
  end
  version "0.0.7"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
