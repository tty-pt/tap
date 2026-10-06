class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.2/axil-tty-1.3.2-brew-arm64.tar.gz"
    sha256 "692fe2baef170f3ffdb76b12c22c2fe093129daf60a8b8f69fe8e34165e3e693"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.2/axil-tty-1.3.2-brew-x86_64.tar.gz"
    sha256 "a9c7ca576ee76ab67ba6be53b8e001fb8b35ec59cd2a6214cdc26d82cc986906"
  end
  version "1.3.2"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
