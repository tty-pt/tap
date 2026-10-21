class SevenWays < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.2.1/seven-ways-1.2.1-brew-arm64.tar.gz"
    sha256 "cfad299699274d177578681758e1b4437af79f7d7887a4bf0d4593f8b5b42048"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.2.1/seven-ways-1.2.1-brew-x86_64.tar.gz"
    sha256 "6ea503f2ac018cd718995489dc4b4156960e4094609f1fddaf505582570e984d"
  end
  version "1.2.1"
  depends_on "libislet"
  depends_on "liblamina"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
