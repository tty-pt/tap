class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.3/axil-auth-1.3.3-brew-arm64.tar.gz"
    sha256 "37984928014c91a285e1d873df7c2e5e7a3ea6b7e474898817a672ae6991ebf4"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.3/axil-auth-1.3.3-brew-x86_64.tar.gz"
    sha256 "84311f18d3fbce617200cde5622c454a933daab7deca0069bf578b8a07368762"
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
