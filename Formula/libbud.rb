class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.0/libbud-1.0.0-brew-arm64.tar.gz"
    sha256 "e80d382e438116a61a94eaab6d59d671f971ff4e72e6dc08309193accc4d5ead"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.0/libbud-1.0.0-brew-x86_64.tar.gz"
    sha256 "96a0db3a62699e4494aa056a3d227d663928f7a912a2c34639ea04a2607ef9c8"
  end
  version "1.0.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
