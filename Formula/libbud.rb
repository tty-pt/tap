class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-arm64.tar.gz"
    sha256 "af411a0523e1c3c12f602745231e9f4a5ab9884fcc7e4213db8798af03825da2"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-x86_64.tar.gz"
    sha256 "1ea227ff38089ee6d3c61089c7a99aa6d09e22e67d82c3f463f0d03bc34e183c"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
