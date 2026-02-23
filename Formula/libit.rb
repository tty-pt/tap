class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-arm64.tar.gz"
    sha256 "9d7eeffa25203d63075ad0058ec0780fdb51ed00bb8c629d8b0a58b8b736f93e"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-x86_64.tar.gz"
    sha256 "073ae3cc345ba61b70371d3d84d0738f10d3a91abdd06449ee2ad8fa5ac08807"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
