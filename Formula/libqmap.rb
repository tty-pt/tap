class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.4.0/libqmap-1.4.0-brew-arm64.tar.gz"
    sha256 "79cb848bd6331e04dd329b02492a4a95f3ffa3e5c844a1683f3edf4184dd75b5"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.4.0/libqmap-1.4.0-brew-x86_64.tar.gz"
    sha256 "7265e8f2c62bb1c6d5362724ddfdcef2fcd2386aa7dfb8bfdc4ae16e0cfba4ed"
  end
  version "1.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
