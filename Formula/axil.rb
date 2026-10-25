class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.6.0/axil-1.6.0-brew-arm64.tar.gz"
    sha256 "56fed1bdd9951d41ff7d0e52bcc5addd8ffb5bcbd54406b14f0a8940fd78187b"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.6.0/axil-1.6.0-brew-x86_64.tar.gz"
    sha256 "d809898e524c32f2745fa77b611fd30bc11b3dfd2819a57bd64f921effcba3ef"
  end
  version "1.6.0"
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
