class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-arm64.tar.gz"
    sha256 "4a8b4b0c40ae44bbddbe06a17e08ffd7d48a6285a605c1bb61d69da659610e02"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-x86_64.tar.gz"
    sha256 "17b5f3d3bdd4041e2d51ad00e72f026ce560f4af35ee4724ae84997c0b569e78"
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
