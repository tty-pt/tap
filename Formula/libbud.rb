class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-arm64.tar.gz"
    sha256 "051cbcebd8edf2e4840ab148c3b2b68afd4eb408f2b91aafe510a1db99792f67"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-x86_64.tar.gz"
    sha256 "74a0d93d9319aa382d4d7b45306162f072c4f68b48c27fd9d3f6995ab2537168"
  end
  version "1.2.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
