class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.3/libndc-1.0.3-brew-arm64.tar.gz"
    sha256 "b9ef8aed3e978d55dc9bc7bbc9a768cb55ea0aaafb5ac4825b996b514a523ae1"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.3/libndc-1.0.3-brew-x86_64.tar.gz"
    sha256 "d0a76753ae6bebe630ece5f48ef14bcc7f7802f5807970799022e9ad6101debf"
  end
  version "1.0.3"
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
