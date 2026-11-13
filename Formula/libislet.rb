class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.4.0/libislet-1.4.0-brew-arm64.tar.gz"
    sha256 "51836defcf13bd03337fa93657e5d477a34c846f7655f7ec19625bb7fa73009b"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.4.0/libislet-1.4.0-brew-x86_64.tar.gz"
    sha256 "d4808feff5250e463c05e0f208aa9ddfe136a9fc2ee74c0d311f95f7adbbfc11"
  end
  version "1.4.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
