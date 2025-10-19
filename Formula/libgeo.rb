class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-arm64.tar.gz"
    sha256 "1accbed601b1227881fdbfc47a7fbc875c8bd9a229a5f83d3d895f6628a35e83"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-x86_64.tar.gz"
    sha256 "b27800a197de7d4659ca92e3115543f4b6bccb3cc12f5a411cdc1e199cac1071"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
