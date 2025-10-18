class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-arm64.tar.gz"
    sha256 "e7dc5dc40011d60cdf339a2c639aabcad7ba89fe8341359347bda825e3f56d4a"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-x86_64.tar.gz"
    sha256 "4ce21451237f19f0f1c7e860232825380ceb82607f5d91ec649975841b67d894"
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
