class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.0/libjoint-1.6.0-brew-arm64.tar.gz"
    sha256 "9abcfda29c0d00f931fdc102f7b86464d6169f316960ccd02adcd790997e302d"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.0/libjoint-1.6.0-brew-x86_64.tar.gz"
    sha256 "84749ed6963ca1685fbf4ccd6f2288185be0807329f3d416d0599fb3e9683935"
  end
  version "1.6.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
