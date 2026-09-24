class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-arm64.tar.gz"
    sha256 "e806b01f1390939cd72d99490abb21f5b8f0a244ea708cdf2f1c0dde42a48512"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-x86_64.tar.gz"
    sha256 "731beffc7f68566ea55eb91ae31870399a1dcff7c24301ac98408b9462d5d692"
  end
  version "1.4.0"
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
