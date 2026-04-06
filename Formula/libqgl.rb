class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.1/libqgl-1.0.1-brew-arm64.tar.gz"
    sha256 "8d88393efb5c942af62c7a0df52d69a851a4cbec3a0ceecb8dc82cb693f94f74"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.1/libqgl-1.0.1-brew-x86_64.tar.gz"
    sha256 "d6a641cb24f6f0f8481a278670dedba5d7abaa4dd14aaf30babedc80bddc6f73"
  end
  version "1.0.1"
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
