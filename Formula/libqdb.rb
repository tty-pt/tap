class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-brew-arm64.tar.gz"
    sha256 "b53f70abc8b8b9485133504c895a417fe9c5e16b1be67c2e3bdf04e7ee87f2f8"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-brew-x86_64.tar.gz"
    sha256 "122c5fdae8c73d00a24a470f0acf3055da0e0ba4904ea73bb33bf565563ed0e0"
  end
  version "0.4.1"
  depends_on "libqmap"
  depends_on "db"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
