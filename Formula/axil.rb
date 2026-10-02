class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-arm64.tar.gz"
    sha256 "fb0e0efcc65c9339fb8ef37f750d15a7ff41f57478925083eef0e1f554556d99"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-x86_64.tar.gz"
    sha256 "25dab1bfdd6070fec32401c0d09b61ea03b0116ddb5a3fc9cae0a84c10714fef"
  end
  version "1.4.1"
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
