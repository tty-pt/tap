class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.1.3/libqmap-0.1.3-brew-arm64.tar.gz"
    sha256 "e56edaaa97229e8293f02269a20ffac8697f8807f1194bb54215ba7f8345c08b"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.1.3/libqmap-0.1.3-brew-x86_64.tar.gz"
    sha256 "98e96c313c82acaae6b4b32e54f635d34c1aa85d50c86b66128ab92248ba4a49"
  end
  version "0.1.3"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
