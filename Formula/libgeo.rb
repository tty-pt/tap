class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-arm64.tar.gz"
    sha256 "e3c17e10dfaf44c3d14069ce5739e6ad4935f13d37f6e20ba53be33bc4004f84"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-x86_64.tar.gz"
    sha256 "1d7bd29fa9d6d31a3b592860059e551e72d2760792787df89e56c867228ef527"
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
