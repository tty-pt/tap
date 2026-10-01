class NdDrink < Formula
  desc "nd-drink binary package"
  homepage "https://github.com/tty-pt/nd-drink"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.2/nd-drink-1.0.2-brew-arm64.tar.gz"
    sha256 "c545ecba8d0c065b66246bca81bb788d6672334116728326945a8a5c85f72d0f"
  else
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.2/nd-drink-1.0.2-brew-x86_64.tar.gz"
    sha256 "748253909d9f4357f762309cc8092ca9532fde4f1602682ec241b61ac07e312b"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-mortal"
  depends_on "nd-core"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
