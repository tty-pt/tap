class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.5/libndx-1.0.5-brew-arm64.tar.gz"
    sha256 "6f494b76e81e0e49c08934f61678987843b036ab86c357a8228032f7c4464dd9"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.5/libndx-1.0.5-brew-x86_64.tar.gz"
    sha256 "820bff3aec44230422b53e39558c3ce90288d859ab94526e3ede3c2bb51c6746"
  end
  version "1.0.5"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
