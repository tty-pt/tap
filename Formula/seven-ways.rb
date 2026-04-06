class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.2/seven-ways-1.1.2-brew-arm64.tar.gz"
    sha256 "c64d1e75515658b83bfe599ed474cb19b168d6a728eadc00e67e67c56e988642"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.2/seven-ways-1.1.2-brew-x86_64.tar.gz"
    sha256 "63e8d02a865340caf5065e224accff384883d31b84adebbe84e1f4ab13ddae99"
  end
  version "1.1.2"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
