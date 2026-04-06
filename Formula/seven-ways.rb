class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.1/seven-ways-1.1.1-brew-arm64.tar.gz"
    sha256 "59738c5cd48b89a593a18be5f942980912e204d3525af017069f9bb5be5f8d25"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.1/seven-ways-1.1.1-brew-x86_64.tar.gz"
    sha256 "ec7cb05cd5c951deb76020aa2e91fc93bdfddcc8341242676f134dd1d73d1d68"
  end
  version "1.1.1"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
