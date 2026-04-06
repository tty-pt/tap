class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.3/libqmap-1.0.3-brew-arm64.tar.gz"
    sha256 "5ffd2cff37b129414dda073e70540dd542f9c83345f24a6ed7aa84f9449a3950"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.3/libqmap-1.0.3-brew-x86_64.tar.gz"
    sha256 "27e940cf42c5b201d5c9b8406556173c1d2000cc7e09d57d01aec505078716b4"
  end
  version "1.0.3"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
