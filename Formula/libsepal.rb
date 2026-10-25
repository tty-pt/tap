class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.2.0/libsepal-1.2.0-brew-arm64.tar.gz"
    sha256 "2ae8d737779010d3d9d17cf47c817398bb3510ce0f82b6ca52fc318aff8508bf"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.2.0/libsepal-1.2.0-brew-x86_64.tar.gz"
    sha256 "629866099abc40fbafbbe0f77b57a7e9b0cad7e9ea98ce891c27c5274ea625dc"
  end
  version "1.2.0"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
