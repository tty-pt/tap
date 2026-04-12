class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-arm64.tar.gz"
    sha256 "39e667ab9bba099d1ea957fb454b682c12f6916e538728cca9f2b625a145f61a"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-x86_64.tar.gz"
    sha256 "9321751031c266a63e42cbb2610a2cb7c1a9b6cb8849cb71c9cbd9821e6c8d66"
  end
  version "1.0.8"
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
