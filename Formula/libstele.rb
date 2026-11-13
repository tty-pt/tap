class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.0/libstele-1.6.0-brew-arm64.tar.gz"
    sha256 "bf898de8e93800b9d907fe679001d855c36c5f762e02dc6e0f6a2d5fb2e5ab08"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.0/libstele-1.6.0-brew-x86_64.tar.gz"
    sha256 "83a250bad69a44ce16794e8d0f97b74b3e43e913517f1a9f7ace9eac947541b4"
  end
  version "1.6.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
