class NdBiome < Formula
  desc "nd-biome binary package"
  homepage "https://github.com/tty-pt/nd-biome"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-biome/releases/download/v1.0.1/nd-biome-1.0.1-brew-arm64.tar.gz"
    sha256 "d3639e49f80b10932081ec2bcef9e14c01f510bc17fc39c5adc7efd85dde9b23"
  else
    url "https://github.com/tty-pt/nd-biome/releases/download/v1.0.1/nd-biome-1.0.1-brew-x86_64.tar.gz"
    sha256 "af96fc07f19b1490d5dcfe7f0d957fc2752db89b00469405fdf7a65ee3b47890"
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
