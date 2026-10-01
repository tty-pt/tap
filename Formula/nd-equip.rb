class NdEquip < Formula
  desc "nd-equip binary package"
  homepage "https://github.com/tty-pt/nd-equip"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-equip/releases/download/v1.0.2/nd-equip-1.0.2-brew-arm64.tar.gz"
    sha256 "5554f4b9450da13f8d5889760f02adeb8901c387b6c2a38a98167c239110cd32"
  else
    url "https://github.com/tty-pt/nd-equip/releases/download/v1.0.2/nd-equip-1.0.2-brew-x86_64.tar.gz"
    sha256 "e17103bfe86f12127840a617babad48a3de627a6dbb3214a2641ce2b877034b6"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-attr"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
