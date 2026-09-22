class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.0/libbud-1.0.0-brew-arm64.tar.gz"
    sha256 "992c9c43a3834b7f68589b373d3bca044522f61ddc255a7ffdc39562d5e4dfb5"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.0/libbud-1.0.0-brew-x86_64.tar.gz"
    sha256 "7d2c211894b153e1536cc8a4efe28925a76cf8ab200fb998e055268d6cb49ef6"
  end
  version "1.0.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
