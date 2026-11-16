class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.8.2/axil-1.8.2-brew-arm64.tar.gz"
    sha256 "5c78fb3bd035e626ebd0b893836c776b0890fb9d2260260e91c5dff48af5c6f0"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.8.2/axil-1.8.2-brew-x86_64.tar.gz"
    sha256 "8372d79fd2ee16c9866f8d7c9ac7726f857e047869ea9766531649a4a05684cf"
  end
  version "1.8.2"
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
