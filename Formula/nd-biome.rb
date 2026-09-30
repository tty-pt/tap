class NdBiome < Formula
  desc "nd-biome binary package"
  homepage "https://github.com/tty-pt/nd-biome"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-biome/releases/download/v1.0.1/nd-biome-1.0.1-brew-arm64.tar.gz"
    sha256 "94fdb68d776c8cd50e4a02c508e47ef7d818dd0328257a3a2f64242b17cdd5b3"
  else
    url "https://github.com/tty-pt/nd-biome/releases/download/v1.0.1/nd-biome-1.0.1-brew-x86_64.tar.gz"
    sha256 "0de3e68e5191db5f2df9dffb6b72a85560af4ea9af267d5af10a14aeca96f2e2"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
