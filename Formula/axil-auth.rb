class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-arm64.tar.gz"
    sha256 "a0068458b142a33e02a2d316fdeade7280576349a07fa2bfa04984c8b184fe4d"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-x86_64.tar.gz"
    sha256 "5971433825b5b58360b41f6dd509c6c9c03449fac3e32fa6304eb7bf615c537b"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
