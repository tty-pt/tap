class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.3/axil-1.8.3-brew-arm64.tar.gz"
    sha256 "2c8b07b5a8e6a52e623d124588e95dfe81c6a23eba91f7eb56934951240d3315"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.3/axil-1.8.3-brew-x86_64.tar.gz"
    sha256 "7e02ab78ae724c39694079b7b833dfb919811ecfde6924a0e76db0eec20b8208"
  end
  version "1.8.3"
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
