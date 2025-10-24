class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-arm64.tar.gz"
    sha256 "1219b6c0b79ea85b1acd2cf930453c53ea15677b9637df5b3d421da925bb4922"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-x86_64.tar.gz"
    sha256 "fb51b8545ef2b25f29c434e630e42d5b82b7eecc8db34b1e8c48d9eb51461b9e"
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
