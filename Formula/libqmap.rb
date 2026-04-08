class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.4/libqmap-1.0.4-brew-arm64.tar.gz"
    sha256 "0e996becdd365c7dfedc902238fbbd56fa5d11c40849c3909595c74629386598"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.4/libqmap-1.0.4-brew-x86_64.tar.gz"
    sha256 "c82cfaf81ff82fba4d7e411f36287cfb37086b4e19438de52919675bca170e8e"
  end
  version "1.0.4"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
