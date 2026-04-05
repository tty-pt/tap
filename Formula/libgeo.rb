class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v1.0.0/libgeo-1.0.0-brew-arm64.tar.gz"
    sha256 "6ac9a148d7e7584f03904f8c9774bb7c227f66196e841bc3d9f9ee1157be57d7"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v1.0.0/libgeo-1.0.0-brew-x86_64.tar.gz"
    sha256 "da4e6f31533b648895ad9ed0945091748165eb9455967791145ab761b16b33c2"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
