class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-arm64.tar.gz"
    sha256 "6aa4b409f8d20c78f6833e00a32e55c975224b9dfeab40382164d9e6a70533ce"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-x86_64.tar.gz"
    sha256 "22d6fe339dcc796ad1747e3edb5bd6805a4f9558d45a1bc0df532c2236900648"
  end
  version "1.0.0"
  depends_on "axil"
  depends_on "libqmap"
  depends_on "libxylem"
  depends_on "libhyle"
  depends_on "libhyle-source"
  depends_on "axil-auth"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
