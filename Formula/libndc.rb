class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-arm64.tar.gz"
    sha256 "ed14e9b6fc955ec445521601de1df6fbcbac5f58365b79d726d627ee469aeb58"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-x86_64.tar.gz"
    sha256 "bcf277da12a6833f89fa964a386ee42085dd45c94fbb2c33373e9a78b5fe427b"
  end
  version "0.17.0"
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
