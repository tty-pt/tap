class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.6.0/libqmap-0.6.0-brew-arm64.tar.gz"
    sha256 "b296eae5f47e776ab873dce491aa8522aadc0d54ac2761c54f9bf6062393a8fb"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.6.0/libqmap-0.6.0-brew-x86_64.tar.gz"
    sha256 "2fb946765b27e5274a99d7090ae38b0409f840ff62014a1e0598ab90c0e4f2c2"
  end
  version "0.6.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
