class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-arm64.tar.gz"
    sha256 "394de1605fe1651dd7aa091df9adeb8d29055e9abd542225a981571bc716c742"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.0.1/liblamina-1.0.1-brew-x86_64.tar.gz"
    sha256 "223b2b4e3a22c19fc1730fbfa67b32dc4cef9a216192752c2c51f71e9acb6e07"
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
