class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v0.0.1/libit-0.0.1-brew-arm64.tar.gz"
    sha256 "cba5b8bc06e20566478562e637fd88d91ed1acb0d07be12e1adbbcd3aa91a79b"
  else
    url "https://github.com/tty-pt/libit/releases/download/v0.0.1/libit-0.0.1-brew-x86_64.tar.gz"
    sha256 "b01ad840c1f831c2ca1d65ff4bcf7735c01ee98c4a3ae7869612771011a90a35"
  end
  version "0.0.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
