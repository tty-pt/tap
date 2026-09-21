class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-arm64.tar.gz"
    sha256 "219c2f0b433962ad5d252e971561a5f3df598fe6ce557bfd6bbc6e6a55a459bd"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-x86_64.tar.gz"
    sha256 "c8edd00d0e08f0b2532ade730c3496ce8e5f9c44ef415a3983bc40cb9edb3bfa"
  end
  version "1.1.0"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
