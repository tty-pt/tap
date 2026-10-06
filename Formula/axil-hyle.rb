class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-arm64.tar.gz"
    sha256 "b18f2e1cf62e306c0fff5d6121d0fac2ecfb43ae2629913ac78686806836bb4e"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-x86_64.tar.gz"
    sha256 "6a04fb6e3ad572239a24a97080c558c2e46d13911f7275b511ae33a2388a91fd"
  end
  version "1.0.0"
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
