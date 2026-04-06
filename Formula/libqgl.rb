class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.2/libqgl-1.0.2-brew-arm64.tar.gz"
    sha256 "c618d5404792d418bac0deee6e737236b24eb0e1b77a81445c6d797208bca70b"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.2/libqgl-1.0.2-brew-x86_64.tar.gz"
    sha256 "8e78fdbe630e3cafdad72aca359ebbdc6880b8a3c115e98cb51ed8811f26a64b"
  end
  version "1.0.2"
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
