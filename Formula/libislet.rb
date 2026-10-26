class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.0/libislet-1.3.0-brew-arm64.tar.gz"
    sha256 "41b4e693c8ba14bc40caa0fd89ac3085217c421a4b020eb6889c9d2421548f99"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.0/libislet-1.3.0-brew-x86_64.tar.gz"
    sha256 "3228a4184d0e8478793fea45dd2a66bd6fc7529e6092e8fadb5332e99ec20156"
  end
  version "1.3.0"
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
