class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-arm64.tar.gz"
    sha256 "4e1b498d94b6cbb2631318f7173c04f08c6bea88a88e52809cf0775e768a473b"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-x86_64.tar.gz"
    sha256 "5f4f931b3199fbabe0c4ebb4ba1f6d4a75114fb47180327f3aa77027e1c17a22"
  end
  version "0.5.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
