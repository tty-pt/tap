class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-arm64.tar.gz"
    sha256 "e295f032333587a4b801822ec11aaf2032402979215e4c0d642bec13eca1956c"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-x86_64.tar.gz"
    sha256 "400d2d9c8a28b7e16d4bf5587d7964b1eafc5af4b0ad93ce263fc4e0f6361e50"
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
