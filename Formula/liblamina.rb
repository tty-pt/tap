class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-arm64.tar.gz"
    sha256 "ac4cc2263f968ecc55f2b4b3601bc828af459280bcd9beed7b49f048b2aee2a3"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-x86_64.tar.gz"
    sha256 "035e50a5a22f1b5ca43e36d6420ea0a837c0ffe2aaa536a74c86af0221ca620d"
  end
  version "1.0.0"
  depends_on "libcorm"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
