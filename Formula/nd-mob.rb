class NdMob < Formula
  desc "nd-mob binary package"
  homepage "https://github.com/tty-pt/nd-mob"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-mob/releases/download/v1.0.2/nd-mob-1.0.2-brew-arm64.tar.gz"
    sha256 "da830327f39cd90c5b264fdd2df3a0c8a699d98757c9d074b479733f82499085"
  else
    url "https://github.com/tty-pt/nd-mob/releases/download/v1.0.2/nd-mob-1.0.2-brew-x86_64.tar.gz"
    sha256 "2ab4697d7eca7a504e1c6c6331dc5074c36c1f40058ac372a3e40f1b89538ab3"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-fight"
  depends_on "nd-plant"
  depends_on "nd-race"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
