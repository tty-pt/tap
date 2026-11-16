class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.4/axil-1.8.4-brew-arm64.tar.gz"
    sha256 "bcddd05a3e42351d54fbd2ae779bf40b18cc0542a52c5dcbc34ec2cf317862b3"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.4/axil-1.8.4-brew-x86_64.tar.gz"
    sha256 "7f746bfa18c5bd32237b8156b198e72c79065f7aeb14643917963289f3cb0ef6"
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
