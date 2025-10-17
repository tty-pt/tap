class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-arm64.tar.gz"
    sha256 "cdd1d4d9f8d21639b8f711746fff7559e59281c866457b1d218294b7b43a378c"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-x86_64.tar.gz"
    sha256 "868239dff41660dee80028b47e82ccc602aa92855cbea2233b41e4c00f9425cd"
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
