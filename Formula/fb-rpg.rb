class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-arm64.tar.gz"
    sha256 "623e10d77add34c6f214e99d29cdf91327b6d294e8adeaa3e4e9ea27b70fb745"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-x86_64.tar.gz"
    sha256 "f66b5b723d2951e240a4a0bed78ed57733957b8702fcc8fe675744a04336892b"
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
