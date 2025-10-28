class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.2.0/libgeo-0.2.0-brew-arm64.tar.gz"
    sha256 "a75a01747de6380d453905c022fd402646e0c86a5435e018a260ac8dacd91ebc"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.2.0/libgeo-0.2.0-brew-x86_64.tar.gz"
    sha256 "bc32b01154757ae4988a8356f8663d61e41d42dbd98b36bdaa6b25018367b855"
  end
  version "0.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
