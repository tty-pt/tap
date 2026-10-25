class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.1/libcorm-2.0.1-brew-arm64.tar.gz"
    sha256 "ee5f09b929074916659f99d089a611f727d37b131f13dd8b8a8c69d82217d183"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.1/libcorm-2.0.1-brew-x86_64.tar.gz"
    sha256 "f90f6f8734ee4ef9557de382dc90d173caba046dff049031a7b4757430aadae9"
  end
  version "2.0.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
