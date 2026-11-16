class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.4/axil-1.8.4-brew-arm64.tar.gz"
    sha256 "2bfc9d507595ffdcbb804c9e3f2dc2826d632216f769f14840275bbe377b3b1e"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.4/axil-1.8.4-brew-x86_64.tar.gz"
    sha256 "870da616ae328fb30a4426ba51b735f15950167af42c6892222506791da03d54"
  end
  version "1.8.4"
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
