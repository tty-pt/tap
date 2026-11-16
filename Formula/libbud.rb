class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.1/libbud-1.3.1-brew-arm64.tar.gz"
    sha256 "07cd3c2ff378ba31eeae4b11148547ecd6c344714ed4621db729ac40e1a7c040"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.1/libbud-1.3.1-brew-x86_64.tar.gz"
    sha256 "a98cce7d73c2f5511e907fa1895fd04672edafe2c55bb5046a8a403fd327900f"
  end
  version "1.3.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
