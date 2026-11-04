class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-arm64.tar.gz"
    sha256 "02dfbf45b919c759c2aa9c7f5147049d314b3d9908327475ec46c90254b5be4e"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-x86_64.tar.gz"
    sha256 "c1127ccd7ab282c7e2b414a5467642601bacbef5ab553811df64d30ddd05de9d"
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
