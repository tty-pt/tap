class NdSpell < Formula
  desc "nd-spell binary package"
  homepage "https://github.com/tty-pt/nd-spell"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.2/nd-spell-1.0.2-brew-arm64.tar.gz"
    sha256 "7b3c6a8310cf9164e000c3cb6d60a3b79cbcf3ebfeb5a654dd976da4502ae6a6"
  else
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.2/nd-spell-1.0.2-brew-x86_64.tar.gz"
    sha256 "7254eb1589225e461dea85252a7160612b2c276beddff4ecff2b8a7c84b29888"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-attr"
  depends_on "nd-fight"
  depends_on "nd-mortal"
  depends_on "nd-seat"
  depends_on "nd-equip"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
