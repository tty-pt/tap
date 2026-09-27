class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-arm64.tar.gz"
    sha256 "ff0a5075436498123e29b7082f8771df9700236e6d5c6aec3825fb6b49bbeb7d"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-x86_64.tar.gz"
    sha256 "5f799d0cbe240347b7f3ca885c9d803138369939e090f406ea14b99b16fabce8"
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
