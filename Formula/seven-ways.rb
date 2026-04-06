class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.9/seven-ways-1.0.9-brew-arm64.tar.gz"
    sha256 "bde7be7c2a1ec6545e15a29eaf8b4303ca829d080fba9e7c4309376f721a668d"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.9/seven-ways-1.0.9-brew-x86_64.tar.gz"
    sha256 "ec1fe576e816d21b2f7893776be21acda0179a3b36024a28bbb437aba65f824d"
  end
  version "1.0.9"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
