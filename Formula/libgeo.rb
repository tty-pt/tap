class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-arm64.tar.gz"
    sha256 "7e9f9fcb124d335dc002b2b10c0711c0cc6fd2e0a769bedee69d2eb486f3dfb9"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-x86_64.tar.gz"
    sha256 "5e2b1a24cf75dce7d9d65a0a99265a91f31b5f25e05c3aa1f318461f4351cb30"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
