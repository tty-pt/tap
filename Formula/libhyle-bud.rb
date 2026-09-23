class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-arm64.tar.gz"
    sha256 "4253ff894a3878a3b61f178997e2a4fc744202c696e3e33f2f6373ec7ce34170"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-x86_64.tar.gz"
    sha256 "4c5e711a04aba878d7e5bcbfb9ac2c4b59fd8d09d33a202c6e4244d19811e77f"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "libhyle"
  depends_on "libbud"
  depends_on "libhyle-source"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
