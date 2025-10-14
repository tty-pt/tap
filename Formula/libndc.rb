class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/libndc-0.0.1-macos-arm64.tar.gz"
    sha256 "ce442decbca9c7de0ba069d6696c3d7fedf747cb938d88932b70edf11ea711e9"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/libndc-0.0.1-macos-x86_64.tar.gz"
    sha256 "7c5c5aca6d20f306b6a2e891431475703af045daeb50a14fbfb1da8a5fae75af"
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
