class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-arm64.tar.gz"
    sha256 "a03dfb93b76894f6b72fd6a25561e6af2c77a20e76587e45935f207923f93874"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-x86_64.tar.gz"
    sha256 "4b7d6375b233c8c29d83005f5d5eacc6aca3fc4699c787266c4f2408ccaea791"
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
