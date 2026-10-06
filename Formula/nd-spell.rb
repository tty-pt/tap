class NdSpell < Formula
  desc "nd-spell binary package"
  homepage "https://github.com/tty-pt/nd-spell"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.7/nd-spell-1.0.7-brew-arm64.tar.gz"
    sha256 "d502908a5d59b4af734fa298eef493f20e21dbb5fa7589483f3a7e55672f8bc8"
  else
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.7/nd-spell-1.0.7-brew-x86_64.tar.gz"
    sha256 "c27ec32d4dcb7184204e0bb57b3503a1a30cc219bb7c28db7c5a05a7357b1732"
  end
  version "1.0.7"
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
