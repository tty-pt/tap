class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.1/libndx-0.1.1-brew-arm64.tar.gz"
    sha256 "cdaee6720015c6ca532f4e08defdaea66c44e1f2d5f58b0d65bd7c0b12525cfd"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.1/libndx-0.1.1-brew-x86_64.tar.gz"
    sha256 "e7976f2f9058f25365c8c86314388984d806944c8e79c1ba935cfe3f2a30a7dd"
  end
  version "0.1.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
