class Libareole < Formula
  desc "libareole binary package"
  homepage "https://github.com/tty-pt/libareole"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libareole/releases/download/v1.1.0/libareole-1.1.0-brew-arm64.tar.gz"
    sha256 "c2d54b8557427c0f53fc2734c50b8649ab884dc853515c49760c50098c1b6780"
  else
    url "https://github.com/tty-pt/libareole/releases/download/v1.1.0/libareole-1.1.0-brew-x86_64.tar.gz"
    sha256 "41d95058f42d0f265584ad040dff6169312ab86a91fe2b9e2ba0dff2def4c894"
  end
  version "1.1.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "libislet"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
