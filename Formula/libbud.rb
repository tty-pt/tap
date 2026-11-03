class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-arm64.tar.gz"
    sha256 "96aab2d8874a3e0a7b8427ef8f3ed042004d131a37af5864dd99f2b47a8bad20"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-x86_64.tar.gz"
    sha256 "80d44f2d411b544b1bc5cba6acd772ca3280974bcbad955af9380b5db41c9a75"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
