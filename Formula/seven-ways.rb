class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.8/seven-ways-1.0.8-brew-arm64.tar.gz"
    sha256 "b7bdddf5018abafc24f534a2bc46deba96136450d846c1208ff202869ff49cbc"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.8/seven-ways-1.0.8-brew-x86_64.tar.gz"
    sha256 "a38b1f25dd877a5c6b1688781e38ebe9e30db320eae60b15a3ed2822520fe8c7"
  end
  version "1.0.8"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
