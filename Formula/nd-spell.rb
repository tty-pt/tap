class NdSpell < Formula
  desc "nd-spell binary package"
  homepage "https://github.com/tty-pt/nd-spell"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.6/nd-spell-1.0.6-brew-arm64.tar.gz"
    sha256 "45ba18be871f4af00f52e783f01300e71e44e80760e13444a9a131ba99122ab6"
  else
    url "https://github.com/tty-pt/nd-spell/releases/download/v1.0.6/nd-spell-1.0.6-brew-x86_64.tar.gz"
    sha256 "82964add9c4e52bb7ff925a83ab4e6d7b40bd335b8a15e302aff7c709401bac9"
  end
  version "1.0.6"
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
