class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.0/libndx-1.1.0-brew-arm64.tar.gz"
    sha256 "5510f829e16eb0e4f2d2af23fd49f3e941b725e8359e6def791938d71d2196d9"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.0/libndx-1.1.0-brew-x86_64.tar.gz"
    sha256 "57cfe95ad8f7afa731dba30ab086e71be21f450ab55f3ab865f26183109854e2"
  end
  version "1.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
