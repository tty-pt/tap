class NdDrink < Formula
  desc "nd-drink binary package"
  homepage "https://github.com/tty-pt/nd-drink"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.3/nd-drink-1.0.3-brew-arm64.tar.gz"
    sha256 "5d543c87f04cf919b334520337a53ebf3c314d606dc6462ccaa95a0edced4888"
  else
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.3/nd-drink-1.0.3-brew-x86_64.tar.gz"
    sha256 "e27f1aa9423306ff7456634e831867c37fae114b171229b1c45daf0bd1be4ff8"
  end
  version "1.0.3"
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
