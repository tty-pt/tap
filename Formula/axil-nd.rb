class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.3.0/axil-nd-1.3.0-brew-arm64.tar.gz"
    sha256 "e3d3a3429861e3ce407c39af66ce9bc74295ec2e29130d09b222fe3bbffe5c51"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.3.0/axil-nd-1.3.0-brew-x86_64.tar.gz"
    sha256 "06c4233eaf9f77ecf15cf8a5c5d3cece1c1d71f8a719d20509d987b9b6f8115a"
  end
  version "1.3.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libislet"
  depends_on "libqsys"
  depends_on "axil-tty"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
