class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-arm64.tar.gz"
    sha256 "3694e188db236b91d3313142ea3f453126b47cdc256f864be00287cd65aabe25"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-x86_64.tar.gz"
    sha256 "00c43d72ec61b3c69fb300b11af7c17864d5a2895f612cf1686fe30d53de09bf"
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
