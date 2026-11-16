class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.2/libbud-1.3.2-brew-arm64.tar.gz"
    sha256 "20e4c27dec6e4dd194c1a7a896e9728d9eb2ca3be406c5a271e83e6696b44ce6"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.2/libbud-1.3.2-brew-x86_64.tar.gz"
    sha256 "feb15c85f54fa53a2a4b31c2f49a80668498c22444ee0e07f7b338500c8a33d6"
  end
  version "1.3.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
