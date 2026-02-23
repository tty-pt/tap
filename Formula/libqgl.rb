class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.0/libqgl-0.1.0-brew-arm64.tar.gz"
    sha256 "b5d6c3b737cb1864ac2c15bb07af51e21af17e32d64a71e2d61090d2baf7c658"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.0/libqgl-0.1.0-brew-x86_64.tar.gz"
    sha256 "b01d731f1500e3033a87594f328110b61e50855a87a36d79993072fc395744a2"
  end
  version "0.1.0"
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
