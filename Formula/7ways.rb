class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-arm64.tar.gz"
    sha256 "a8202f6172d8e70150d5fb11ecc386ec406f3047f56191d7bd7ed380b49627f5"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-x86_64.tar.gz"
    sha256 "f3f729cde68e261cd3ffac164704517a941e3c24e38ec640b58303841310a7e8"
  end
  version "0.0.2"
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
