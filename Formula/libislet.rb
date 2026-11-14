class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.1/libislet-1.6.1-brew-arm64.tar.gz"
    sha256 "e93ede1d6012f177fada5d2ab0312f303b0a2a4c5e12cb9c92410bed64dd312b"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.1/libislet-1.6.1-brew-x86_64.tar.gz"
    sha256 "0911c63c3c965b7e8f7cdbeed84447ff527caad1ea0824b07042568cb1f4dcad"
  end
  version "1.6.1"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
