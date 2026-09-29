class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-arm64.tar.gz"
    sha256 "1c17a4f9342d93c3ef4850b6e48b57b5690e590a2baf3101cf5017def2bf968c"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.1/axil-1.4.1-brew-x86_64.tar.gz"
    sha256 "06e9f615b520db10b0ae1b29ea39b0a7cec212d6891c6e2720b7b8b3e072ff7f"
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
