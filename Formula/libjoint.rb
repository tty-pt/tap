class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.5.0/libjoint-1.5.0-brew-arm64.tar.gz"
    sha256 "fa8f8c1d3e14a3b16d64d22eddc5600857a948844e0c5837f7b06bb58afbee0b"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.5.0/libjoint-1.5.0-brew-x86_64.tar.gz"
    sha256 "28d4a446d73b1bc4a6039632509dcd17919b2a55f99480b8e672ee73482a3156"
  end
  version "1.5.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
