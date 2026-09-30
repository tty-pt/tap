class NdShop < Formula
  desc "nd-shop binary package"
  homepage "https://github.com/tty-pt/nd-shop"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-shop/releases/download/v1.0.1/nd-shop-1.0.1-brew-arm64.tar.gz"
    sha256 "dc0d97d16196837e41acefcc41529e494e620abf9b24a55d8aee59e28f4d9050"
  else
    url "https://github.com/tty-pt/nd-shop/releases/download/v1.0.1/nd-shop-1.0.1-brew-x86_64.tar.gz"
    sha256 "7efa8b9313e76c61cbb5b0ba323a2d5f8dee4fce24560cce61dc14ef99bd39e3"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-core"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
