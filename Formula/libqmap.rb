class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-arm64.tar.gz"
    sha256 "3e5a408806670a7a9cc0e26cf357f54eced9545e1c007eecbb863a1dac22dab5"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-x86_64.tar.gz"
    sha256 "efd30bf884810672e81d1a3896b7721b4d044743a41fa3d7b9c777cc64b376eb"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
