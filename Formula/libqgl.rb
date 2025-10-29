class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-arm64.tar.gz"
    sha256 "fc67ec6d03aef0efc0d63f92fd32e6d73e29f0bafb530f388f9c6f22ad826155"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-x86_64.tar.gz"
    sha256 "410e3c320b4c4c5267b759bff0433aafcd0ffb43dca2f1720a83b2640179aa9f"
  end
  version "0.0.1"
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
