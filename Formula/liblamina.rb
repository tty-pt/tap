class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-arm64.tar.gz"
    sha256 "d908467ebb1edf2ec587afd3562ebbda0b1a09c53e5dd833e53a6b5e20a643a9"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.0/liblamina-1.0.0-brew-x86_64.tar.gz"
    sha256 "8b3411347a72234995db8cd21da112c701576195fab05ab13023d56a3da3c945"
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
