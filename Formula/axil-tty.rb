class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.1/axil-tty-1.3.1-brew-arm64.tar.gz"
    sha256 "9ec684a854517442953081bfd466ab61209fbdffdd0b1b1c87c123c7c81bf008"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.1/axil-tty-1.3.1-brew-x86_64.tar.gz"
    sha256 "c49b05822a7a6c3502291dcc504c4d99eb2dc635a1aa5ba1e0593f2878953567"
  end
  version "1.3.1"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
