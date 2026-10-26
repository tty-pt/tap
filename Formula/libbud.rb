class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.1.0/libbud-1.1.0-brew-arm64.tar.gz"
    sha256 "e703a5bbe729ab82c1de8b2f34a97333562bdf48453b8828265ba5b3aebc231a"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.1.0/libbud-1.1.0-brew-x86_64.tar.gz"
    sha256 "62f6d102a2ced08ef680d53d1b6505d4e7af52b976d292f050bea35004405530"
  end
  version "1.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
