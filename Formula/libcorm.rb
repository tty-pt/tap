class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-arm64.tar.gz"
    sha256 "2ffea1352d834ddca3318930ec679b0ebf1cb28d4cd508ab3880f928bdf2c8ed"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-x86_64.tar.gz"
    sha256 "4b0f8a5e8cc3dbddf9bd99cffd500975897e1d3e86744092845909520ca9deff"
  end
  version "2.2.2"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
