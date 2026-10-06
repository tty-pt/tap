class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.5.0/axil-1.5.0-brew-arm64.tar.gz"
    sha256 "7bfa57808ac815fa9991aadb73254624e4ba0c8d306a26aa30937fff2a92dd56"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.5.0/axil-1.5.0-brew-x86_64.tar.gz"
    sha256 "1d2654702f7c14471fbede62990634d2967bea7da4442aaed657fb7918e703d7"
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
