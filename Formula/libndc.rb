class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-arm64.tar.gz"
    sha256 "9add657f687d7eece9fbec0cdf98d1efb35d0163d425ecc2115b3ed7ed66d0dc"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-x86_64.tar.gz"
    sha256 "882cf44fc56b78db1b7771f0bf7c5cc0ead6715d0edd919f725561b91a22f9b8"
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
