class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.6/libndx-1.0.6-brew-arm64.tar.gz"
    sha256 "a3a0ff3fe9efea8f3161d3c614e03297ac57645976f37351923758a155ca77a8"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.6/libndx-1.0.6-brew-x86_64.tar.gz"
    sha256 "d7d2842587d8269a98de5ea1c9a5d5be8b99ba3ffc520061be2ecbfb061b0825"
  end
  version "1.0.6"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
