class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.1/libqgl-0.1.1-brew-arm64.tar.gz"
    sha256 "75f73f05ca0aebc0d9b6524c6dc7ee3e7f6e7e344019b2cbe230f86eba0ca9df"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.1/libqgl-0.1.1-brew-x86_64.tar.gz"
    sha256 "db49ddde65cae6f74719805f2b6ad715054061bcf0e8b61729dc9865d5dba3ad"
  end
  version "0.1.1"
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
