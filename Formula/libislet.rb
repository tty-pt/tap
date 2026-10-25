class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.2.1/libislet-1.2.1-brew-arm64.tar.gz"
    sha256 "8151fab1420ad1ae28509a06f61d5cc5a4caaed0118ca6c3fe99e3b2aeb6641c"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.2.1/libislet-1.2.1-brew-x86_64.tar.gz"
    sha256 "0cbe873605a2c6bc14b4c3ba0d5dd78116808c51d7562e17589f2e8cf0522df0"
  end
  version "1.2.1"
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
