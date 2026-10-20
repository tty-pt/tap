class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.4.0/libhyle-1.4.0-brew-arm64.tar.gz"
    sha256 "a39d4ea12529c17dc6e11f14b227cebbb1e68e343f846717f41a117573f280f8"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.4.0/libhyle-1.4.0-brew-x86_64.tar.gz"
    sha256 "4723070ec9da20d974a8b7ba2ee88a33f58f3f83bc2d9ae9cc183ee74f85a9a8"
  end
  version "1.4.0"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
