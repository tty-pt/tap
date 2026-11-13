class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.0/liblamina-1.1.0-brew-arm64.tar.gz"
    sha256 "d7afeb1b91d907391590b898a2652e97d44401f22697453b7c466130e8542a94"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.0/liblamina-1.1.0-brew-x86_64.tar.gz"
    sha256 "9cc3d844e85f961662bf5af65506bc4a60542de5a5e326152bbbde5d2dc053bf"
  end
  version "1.1.0"
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
