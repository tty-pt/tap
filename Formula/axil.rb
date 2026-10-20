class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.5.0/axil-1.5.0-brew-arm64.tar.gz"
    sha256 "4c2ee198fbfbbecd7d631da165e4d5a1fc87f6654863ec6284d387ea27441916"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.5.0/axil-1.5.0-brew-x86_64.tar.gz"
    sha256 "b498758c9ea12519deea37254630a4e061cc5a37b2e47d433dfe32fc2955c7dd"
  end
  version "1.5.0"
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
