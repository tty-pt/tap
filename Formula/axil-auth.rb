class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-arm64.tar.gz"
    sha256 "4cfcbb61b40b9d95f34b2799a5358da3a956b15216b64a80e42c5d3c2ad099a3"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-x86_64.tar.gz"
    sha256 "7ae99d2a1d183c74fced5385e7ba8fc17735c5ce6027e2f3f065f369e606d3fb"
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
