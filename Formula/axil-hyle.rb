class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.1/axil-hyle-1.0.1-brew-arm64.tar.gz"
    sha256 "32b68ca0db2479c082cf0eec061084cfc3f9af3cecb93001d5dbf687519f7d3e"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.1/axil-hyle-1.0.1-brew-x86_64.tar.gz"
    sha256 "473da27f8a872a3cc4f03c8539f40a676a8c9d22949361fbc5c1895f6b362f67"
  end
  version "1.0.1"
  depends_on "axil"
  depends_on "libcorm"
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
