class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v0.0.1/libit-0.0.1-brew-arm64.tar.gz"
    sha256 "5c4a9d599c54012ecf60ab05d71b6b4bf4caae0c958e3ecd32e9bf93bc469b34"
  else
    url "https://github.com/tty-pt/libit/releases/download/v0.0.1/libit-0.0.1-brew-x86_64.tar.gz"
    sha256 "4351e26876fd9be55eb4d040beeb56664b3c60b9252abf7764991d74fd24ce69"
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
