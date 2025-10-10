class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-arm64.tar.gz"
    sha256 "3c8e21efdcf4177263b0bf511f2d98bd6bca9467b67815ab0d0bea3cf710db25"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-x86_64.tar.gz"
    sha256 "cb3f1c380381cd8375fc4f92f482a8c9344b8cd6bab5dc42af884e647a06ebd6"
  end
  version "0.15.0"
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
