class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.2/libqmap-1.0.2-brew-arm64.tar.gz"
    sha256 "ef56c99567190b4765e4a349d3e8e052d473c7c6f0e6502f08121b29585e94e2"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.2/libqmap-1.0.2-brew-x86_64.tar.gz"
    sha256 "320de3b5e6d4c4f1a2cabe95a813616d6780cefb2fb56cd17f39569972af53f3"
  end
  version "1.0.2"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
