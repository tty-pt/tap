class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.2/libislet-1.3.2-brew-arm64.tar.gz"
    sha256 "0a9d752bd9a1c543b7190e060233462b6b18de6dcba608aa4bfd955cc150b8d1"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.2/libislet-1.3.2-brew-x86_64.tar.gz"
    sha256 "9f5d07aa07d42061871d8e347ad8517c8b0d57a97cf2642f289bdfde6dfa4caa"
  end
  version "1.3.2"
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
