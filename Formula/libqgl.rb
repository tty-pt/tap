class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.2/libqgl-0.0.2-brew-arm64.tar.gz"
    sha256 "0bb29d724ce82b673e1c6429dcd490ab61bdfa39ba026220644269e659e2a5b1"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.2/libqgl-0.0.2-brew-x86_64.tar.gz"
    sha256 "243defb6d5ae9ab6ee88dab2e0d99b7ef83afb5a9f2b379f013c2d2167f0c7ca"
  end
  version "0.0.2"
  depends_on "libqmap"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
