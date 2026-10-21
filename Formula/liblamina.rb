class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-arm64.tar.gz"
    sha256 "17a288dcac82a3067c816d54d0158edecf5e771c09e464d2533e4459e3e97a9c"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-x86_64.tar.gz"
    sha256 "dcbffed1629e29117f733e8f2ed50a23571ebb3846c7c9c15fe2d1e9d6f25ecf"
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
