class NdRace < Formula
  desc "nd-race binary package"
  homepage "https://github.com/tty-pt/nd-race"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-race/releases/download/v1.0.1/nd-race-1.0.1-brew-arm64.tar.gz"
    sha256 "3742e785ae67f05fe723cc59913ee8480c2b4b16ce1d3a0a80043c282c3c889d"
  else
    url "https://github.com/tty-pt/nd-race/releases/download/v1.0.1/nd-race-1.0.1-brew-x86_64.tar.gz"
    sha256 "653eb039ce38e6f86052d0dd717a0f52299f576569c5a495ae58a7b6b9a7df3a"
  end
  version "1.0.1"
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
