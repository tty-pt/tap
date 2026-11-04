class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-arm64.tar.gz"
    sha256 "c76c379bba97d33a485dad8eefffc0ec3db7e5b426959d836113275bba91cb8f"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-x86_64.tar.gz"
    sha256 "ad73ac71ef92b91468b09312260e8cf9ccba0d7f555d2bcecb7ca32340c767c7"
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
