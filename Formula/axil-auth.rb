class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.4/axil-auth-1.3.4-brew-arm64.tar.gz"
    sha256 "c180efd83208a0db2cb5ea1061a4c7219f5b8ac5af35bdff25b1c825c9ec06f9"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.4/axil-auth-1.3.4-brew-x86_64.tar.gz"
    sha256 "b671a0534a3de1e2c139069749593d486bfbe235ad5b5bd5c9c8f6794c4a8115"
  end
  version "1.3.4"
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
