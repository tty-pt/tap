class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.8.1/libjoint-1.8.1-brew-arm64.tar.gz"
    sha256 "d5bd05b469a5245a8388ac3df834e2c791903aaee8ad848d849f5549b74372f0"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.8.1/libjoint-1.8.1-brew-x86_64.tar.gz"
    sha256 "359d960a7f5c60e478748bba44cb9572ef48a83be302ac037357efab3b83c07c"
  end
  version "1.8.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
