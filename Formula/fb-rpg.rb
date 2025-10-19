class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-arm64.tar.gz"
    sha256 "40345338c9ea9a59356a3914608b9bb5b028eca885f1d56f2361f2d129e15d96"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-x86_64.tar.gz"
    sha256 "f5aed58488069983fd45d36fd65e2be4360e984f453cf580feff6e03a89f7d36"
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
