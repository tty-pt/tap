class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.1/libislet-1.1.1-brew-arm64.tar.gz"
    sha256 "194b0356ac2850d76331e3e08aeb405685871d3d3b6c6bd6182b2580c0b43698"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.1/libislet-1.1.1-brew-x86_64.tar.gz"
    sha256 "d57c4e020c6b55665f8da4f5938651110884f391659bb3333a60dad48d11e76d"
  end
  version "1.1.1"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
