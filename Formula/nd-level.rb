class NdLevel < Formula
  desc "nd-level binary package"
  homepage "https://github.com/tty-pt/nd-level"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-arm64.tar.gz"
    sha256 "9ded7f74f94a8885e1dbcc8fd4958f783f191c3f50a60799ed6f301cd04c3860"
  else
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-x86_64.tar.gz"
    sha256 "d2a5c56e03655f427ff44135ab1cdc8148ccc6610a0e6310370df3a065f98ef2"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
