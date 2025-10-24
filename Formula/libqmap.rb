class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-arm64.tar.gz"
    sha256 "e9edbd7938506657646d7ace3b02a81ebf313b7ea3e2f7acd101cf2c93b8b26e"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-x86_64.tar.gz"
    sha256 "99067592310d5fb64218b43244132012b332a3b06da915745ced4aec441c0587"
  end
  version "0.5.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
