class NdOther < Formula
  desc "nd-other binary package"
  homepage "https://github.com/tty-pt/nd-other"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-other/releases/download/v1.0.1/nd-other-1.0.1-brew-arm64.tar.gz"
    sha256 "f58e1c32a9f1d26031c5e505b88138d369efb85e0859fcfa857fecb29b52dc30"
  else
    url "https://github.com/tty-pt/nd-other/releases/download/v1.0.1/nd-other-1.0.1-brew-x86_64.tar.gz"
    sha256 "5d0580c0b000412edc07bf166acc7347ffe7991a0463457f7c644b07e4b010fd"
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
