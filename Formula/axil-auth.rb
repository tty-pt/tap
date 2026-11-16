class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.3/axil-auth-1.3.3-brew-arm64.tar.gz"
    sha256 "d5e154e9d7c1aef4222f1391bd238e2d1d6ba671494d187708eebf8644e0ce88"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.3/axil-auth-1.3.3-brew-x86_64.tar.gz"
    sha256 "f2ee534d453260010bfcfe5823341944ec85ea2b04c20777d726034ec2250846"
  end
  version "1.3.3"
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
