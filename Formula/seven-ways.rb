class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.0/seven-ways-1.1.0-brew-arm64.tar.gz"
    sha256 "9446abdc992262364f5686299aaa830fc9f7b62674f4bdc35024d8e5478982a2"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.0/seven-ways-1.1.0-brew-x86_64.tar.gz"
    sha256 "96984005f10d424e919b75cc6cfb08f2773bee6c6a7d5ed3772ca9870557ba8d"
  end
  version "1.1.0"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
