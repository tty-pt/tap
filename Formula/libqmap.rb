class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-arm64.tar.gz"
    sha256 "8ae66be204e49895b2d1806e8c3406df6b55afdba1e88a44fbc6e2706e30412c"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-x86_64.tar.gz"
    sha256 "d64974992f22faed6c6ecdacf8eba81613bfdeb513070b66ada8557f48c37a22"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
