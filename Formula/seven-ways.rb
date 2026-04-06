class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.6/seven-ways-1.0.6-brew-arm64.tar.gz"
    sha256 "b9390847bd3da637e6637177a3cbe8e532e2d346772edffda62aae72abd33348"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.6/seven-ways-1.0.6-brew-x86_64.tar.gz"
    sha256 "bc32b4bb4c994c3a88c6549d1075e1aafa9b3459e9032b800da07b8c55820067"
  end
  version "1.0.6"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
