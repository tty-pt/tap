class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.1/libqmap-0.5.1-brew-arm64.tar.gz"
    sha256 "fb799bcc3e9ae2cab73970ad7159b90408aa938a9990919aef1a28358166bfd4"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.1/libqmap-0.5.1-brew-x86_64.tar.gz"
    sha256 "652a3089a5b58bb8576528f6f227337d066b5254e95dacb5a0c3513ba624640c"
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
