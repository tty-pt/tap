class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-arm64.tar.gz"
    sha256 "46e171d1354877bbb39e0cfbc9dfb5d8c7d092623b2f8b42d37739d6b4a64781"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-x86_64.tar.gz"
    sha256 "31a594b9040b71a16fd2febbc14636e336de177b9bfd0f1627389404ce6a8f14"
  end
  version "1.0.1"
  depends_on "libstele"
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
