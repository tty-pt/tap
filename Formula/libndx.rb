class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-arm64.tar.gz"
    sha256 "92e0278e0e199fd99d3249508bb6b27a2a8952701c44d06a72653bd97c4c25ae"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-x86_64.tar.gz"
    sha256 "0e0c3b05009872a87e113e1f58a0816bc1d35eb49a3799a4691097a64373052f"
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
