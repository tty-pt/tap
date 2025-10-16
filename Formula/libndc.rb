class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-arm64.tar.gz"
    sha256 "78da58d43aecea4f0439db32fe726dbbc0583fb7e89db28944c0235d97b2c4b7"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-x86_64.tar.gz"
    sha256 "b49f5053de617e269a316d5d616dcec4bb8acd21b6e7acc71e1b3fe5ac462d29"
  end
  version "0.16.0"
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
