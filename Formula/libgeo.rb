class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v1.0.1/libgeo-1.0.1-brew-arm64.tar.gz"
    sha256 "c246f622aba915ea5b1c3ddba0e19594a8b5470bb621a3ad6b58525a25dee8c4"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v1.0.1/libgeo-1.0.1-brew-x86_64.tar.gz"
    sha256 "9c3fa403af63d727f124d42b89e9aab0d06c01ab8e604667c9e597349ea595bc"
  end
  version "1.0.1"
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
