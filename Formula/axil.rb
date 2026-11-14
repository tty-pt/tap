class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.0/axil-1.8.0-brew-arm64.tar.gz"
    sha256 "93604c8bf68de78aafe680bffd5477295004057fd12805f4bcf1cfd28cca171a"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.0/axil-1.8.0-brew-x86_64.tar.gz"
    sha256 "5330852cb361e07f11634e089d77418a1f990991e61e994eb49a1552c365fc18"
  end
  version "1.8.0"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
