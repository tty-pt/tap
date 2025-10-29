class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-arm64.tar.gz"
    sha256 "e3d6b13db5f658cd1a0b5e7e71dff400f16999a3574df8a2b4320e0bb55f1e43"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.2/7ways-0.0.2-brew-x86_64.tar.gz"
    sha256 "0c3300c2a71e3e9dcd4cdd1f03558fad334a7eb4e90f6cc07f0cccacd0cf2ae7"
  end
  version "0.0.2"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
