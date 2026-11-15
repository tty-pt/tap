class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.1/axil-1.8.1-brew-arm64.tar.gz"
    sha256 "079e36dd0095232bbebeff6f1df50ebe428100483a7773f818016ae2fa148aca"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.1/axil-1.8.1-brew-x86_64.tar.gz"
    sha256 "42ebcb2bf771f610a7b615e2b1daae63299b94f76c68b785b9abccfed256a6bd"
  end
  version "1.8.1"
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
