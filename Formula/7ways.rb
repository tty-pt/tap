class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-arm64.tar.gz"
    sha256 "2f4ed75eeb7ff498496352fe073bc9f6a7d6f4c77f689545c8534bb072c6a1c9"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-x86_64.tar.gz"
    sha256 "7f62723a223169539fe939635c24ebc441de70261735b532b219dbd1489005e5"
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
