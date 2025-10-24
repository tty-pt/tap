class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-arm64.tar.gz"
    sha256 "d44fb5166aef323cb0ffa07a22cc60b0dcc3042e5b281e3959ace37ece06c466"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-x86_64.tar.gz"
    sha256 "3968c1499f4e4ac81ac45176cdf869a8e9b186838e85b7a104ec409b0c81ef39"
  end
  version "0.5.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
