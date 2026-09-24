class SevenWays < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.2.0/seven-ways-1.2.0-brew-arm64.tar.gz"
    sha256 "63a28633ed0cd1aa770cbd72a45b7206dd92025172f040388bd355f0b4d87e08"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.2.0/seven-ways-1.2.0-brew-x86_64.tar.gz"
    sha256 "256948b816870954ab73831afdeb7b6b32fc71fedc27acc088f39b0041a9f6ea"
  end
  version "1.2.0"
  depends_on "libislet"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
