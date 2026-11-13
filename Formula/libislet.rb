class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.2/libislet-1.5.2-brew-arm64.tar.gz"
    sha256 "d279b9fda0692a14d795a1579ee369cb618e53d3732ba07e91d50915736f66ef"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.2/libislet-1.5.2-brew-x86_64.tar.gz"
    sha256 "08d225ea5b0a7b29ece73bdd34568df67e2193c7edb3d04ee96059d782400c92"
  end
  version "1.5.2"
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
