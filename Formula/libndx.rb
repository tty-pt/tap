class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.2/libndx-1.0.2-brew-arm64.tar.gz"
    sha256 "bf59be6eb0782f1408461225ad720f514fc44d104fad58cb31b6f20105e191ab"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.2/libndx-1.0.2-brew-x86_64.tar.gz"
    sha256 "df113d77d6f0b0d13c41c1a33aef9bd0b0eaca3a445b02472dbf5640363fe881"
  end
  version "1.0.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
