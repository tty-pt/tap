class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.1/libqmap-0.5.1-brew-arm64.tar.gz"
    sha256 "b3828c0e9390159abde5b66318acda5d009edf2b756975db6397f15e9eb26cad"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.1/libqmap-0.5.1-brew-x86_64.tar.gz"
    sha256 "074317b20070de3abe4dc84ecb1b7f39ee58888b3d01c5410aa8c31fa4cb4df7"
  end
  version "0.5.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
