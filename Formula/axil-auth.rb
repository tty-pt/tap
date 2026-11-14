class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.2/axil-auth-1.3.2-brew-arm64.tar.gz"
    sha256 "9e812e4c0166cff0a56df367af77df6b480518550b03af32cb17a653e303e3e2"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.2/axil-auth-1.3.2-brew-x86_64.tar.gz"
    sha256 "2b59ce0d112797c89a882759755794a2e252a835d35db1e15e2ad32faef0b6b1"
  end
  version "1.3.2"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libstele"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
