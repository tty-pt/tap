class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.0/axil-hyle-1.1.0-brew-arm64.tar.gz"
    sha256 "69f09473cfe6776d05409b7c965bd5d65e429163ffc49ef2089d9530a5787e47"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.0/axil-hyle-1.1.0-brew-x86_64.tar.gz"
    sha256 "eaca8bac43cab2d826171a1cf8899705af74225b3ea81ef59aaf096fc8c6c63d"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libhyle"
  depends_on "libhyle-source"
  depends_on "axil-auth"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
