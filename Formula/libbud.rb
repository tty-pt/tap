class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-arm64.tar.gz"
    sha256 "522a5d41eede824da0679f65e7880cf18893e2fcacc1f8b8386f7c8956a61974"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-x86_64.tar.gz"
    sha256 "a11cb8a2a5bda91fd17b74a1edabce70f1e471ff1eaff70999dbc17d995ac82a"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
