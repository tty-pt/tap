class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-arm64.tar.gz"
    sha256 "8d08c9aec673e49e8724ee56c88a8f3792ecf1cd88dc62e52092f73cbb4085cb"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-x86_64.tar.gz"
    sha256 "7a0d6a7838e5fd8dc9b85c5c7de3312b3000eee284c684b7fc8a39199a682bf5"
  end
  version "1.0.8"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
