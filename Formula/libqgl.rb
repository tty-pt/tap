class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.2/libqgl-0.0.2-brew-arm64.tar.gz"
    sha256 "f4d5d61e12d2ba20e1daf2061a182f4d6ed8adcb28a2121ac10983c2c32a1372"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.2/libqgl-0.0.2-brew-x86_64.tar.gz"
    sha256 "d9ddd725d760e306e29931ba19fecf146b9893c63f8066ae56889ee06f887351"
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
