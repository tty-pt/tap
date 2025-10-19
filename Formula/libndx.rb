class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-arm64.tar.gz"
    sha256 "6299a6171e7ae1b3d604c4d9e8d3691bd769d737fbe4d6b8bfde34193e73a0cc"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-x86_64.tar.gz"
    sha256 "dff09d73a7ca3cbbfa378e550cfef074c415ca621d1787d1386b29c37199e786"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
