class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-arm64.tar.gz"
    sha256 "7cf448beed5e8da2d9a431c6a52144fc6a77be9196435ce92fa722a34f3fce41"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-x86_64.tar.gz"
    sha256 "059984dacf9891bf5cca101cb2d02f5cb30a9164348effaf05d20527ae177b60"
  end
  version "0.0.1"
  depends_on "libgeo"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
