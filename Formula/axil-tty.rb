class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.6.0/axil-tty-1.6.0-brew-arm64.tar.gz"
    sha256 "9d4b444063ae4bc086328d1436be6f4fd697e3ea06639f13294c3d6a5f9119d5"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.6.0/axil-tty-1.6.0-brew-x86_64.tar.gz"
    sha256 "4f52c41f132afa0c50798bdea93d0394932fd0a40eb871637e24d3dad9d5121e"
  end
  version "1.6.0"
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
