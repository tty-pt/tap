class Ndc-tty < Formula
  desc "ndc-tty binary package"
  homepage "https://github.com/tty-pt/ndc-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.1/ndc-tty-1.0.1-brew-arm64.tar.gz"
    sha256 "a8781288a7a182be223fcc6b2ecd2301db5b84498e21e33e409069fa18c2fa27"
  else
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.1/ndc-tty-1.0.1-brew-x86_64.tar.gz"
    sha256 "9a7c7927673222b552f3d5196eed92e6b1004632d1db4cc2fcd73be91e2b37ed"
  end
  version "1.0.1"
  depends_on "libndc"
  depends_on "libndx"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
