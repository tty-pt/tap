class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.4/libqmap-0.5.4-brew-arm64.tar.gz"
    sha256 "8f5427e0b13ef7834bf116e1ce14c9f27f9ecdff68b284eee16abde91269b62c"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.4/libqmap-0.5.4-brew-x86_64.tar.gz"
    sha256 "7b8615e2d06880cc604d9d83efd3a5982567509274b5b50954b63bf4a8557227"
  end
  version "0.5.4"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
