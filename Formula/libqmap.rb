class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.4/libqmap-1.0.4-brew-arm64.tar.gz"
    sha256 "0257bae33f47f83f6fc3863a3e6c30ee359b1844d0678801617b132e1efabafa"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.4/libqmap-1.0.4-brew-x86_64.tar.gz"
    sha256 "913704a4f838193bb2a3e4650cf543583f07837cab574a0f6334012674e30c31"
  end
  version "1.0.4"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
