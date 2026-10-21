class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-arm64.tar.gz"
    sha256 "17a288dcac82a3067c816d54d0158edecf5e771c09e464d2533e4459e3e97a9c"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-x86_64.tar.gz"
    sha256 "d7964ad09b8314106fd70197f5de07a86c55ff195916f792e1b481da2fe97162"
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
