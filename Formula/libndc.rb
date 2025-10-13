class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-arm64.tar.gz"
    sha256 "b51eb45dce03f5f079413c822e22bf9ea378d3301b9568d4fc87f3bae77ba9b9"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-x86_64.tar.gz"
    sha256 "a41fa88fd49dec5261bc0fb40506e92ac083397dcfbe7f0a7797acc63b350129"
  end
  version "0.15.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
