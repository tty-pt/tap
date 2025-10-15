class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-arm64.tar.gz"
    sha256 "4506f40bcdd64f74589a704741140322e64ff70bd8466aaf1281d1d92321f3df"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-x86_64.tar.gz"
    sha256 "d661527d052b3f83a91d8e9f08927393f0b14b29423fa3462814f349749ea444"
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
