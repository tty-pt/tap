class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-arm64.tar.gz"
    sha256 "839125f80aa64069c39762fe56d923950cb228bede01e492f42de1ac6ae4fbd5"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-x86_64.tar.gz"
    sha256 "0dde3c789d06599d2478e67f46b05a9c2b3ef21a3426173af9b01d8806ba613e"
  end
  version "1.1.0"
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
