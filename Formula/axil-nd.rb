class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.1.0/axil-nd-1.1.0-brew-arm64.tar.gz"
    sha256 "511f14821c09662cbab50b7a4f1c2e58c29085a4b07cc1dd6d591b17d6cb979b"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.1.0/axil-nd-1.1.0-brew-x86_64.tar.gz"
    sha256 "0ba8de62891222d04e360554638d2f490602cd5cc77f5c9ec34ec7f1427d9c67"
  end
  version "1.1.0"
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
