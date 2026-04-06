class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.5/seven-ways-1.0.5-brew-arm64.tar.gz"
    sha256 "9c7ed2a095ee3454ff7a42a3f5fca03d62f30bd59451e2dc8342653e8111d682"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.0.5/seven-ways-1.0.5-brew-x86_64.tar.gz"
    sha256 "88a7572598678a93901296dfc22655cde7bb914e7b83cd615b0bea7cddb67ce4"
  end
  version "1.0.5"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
