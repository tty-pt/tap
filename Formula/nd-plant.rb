class NdPlant < Formula
  desc "nd-plant binary package"
  homepage "https://github.com/tty-pt/nd-plant"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-plant/releases/download/v1.0.2/nd-plant-1.0.2-brew-arm64.tar.gz"
    sha256 "12d433816e6bbe05ec6685565500c6b90a6c18958c13f043998ade4135d91263"
  else
    url "https://github.com/tty-pt/nd-plant/releases/download/v1.0.2/nd-plant-1.0.2-brew-x86_64.tar.gz"
    sha256 "bffa7d6e87d7c86ad8fdb76fbd5a95f5f23e31b8fa5ad52980646051287c1447"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-drink"
  depends_on "nd-core"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
