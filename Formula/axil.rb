class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.7.0/axil-1.7.0-brew-arm64.tar.gz"
    sha256 "23cce9dced8a4ebb85cea233f95aa2248e5dbed20c2ddb6c7925b5a41443a965"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.7.0/axil-1.7.0-brew-x86_64.tar.gz"
    sha256 "8cf1d63fdba15048183d69339a0a3b9e56d2f91a621e55d3f9f75a11ca2ad268"
  end
  version "1.7.0"
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
