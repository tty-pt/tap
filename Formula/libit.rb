class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.3/libit-1.2.3-brew-arm64.tar.gz"
    sha256 "5140d61bd0d23f65666c95690bd1cfbdc629a64b1d57186f1d7e91f74ed50060"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.3/libit-1.2.3-brew-x86_64.tar.gz"
    sha256 "5e29ddecbc38d2d1c0de4c86790fd720c26f86f393aa2e3fcc2a85a888ebf2d5"
  end
  version "1.2.3"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
