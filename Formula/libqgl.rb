class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-arm64.tar.gz"
    sha256 "a81ace87b6a305a37e42236cecdc10a6baaf1dcd46901c1103918cb8e64b1dba"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-x86_64.tar.gz"
    sha256 "de7b774bcdc189bc0fe4a25c398066ec0325bfa5a6992ed5eb3f5bf528e6689a"
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
