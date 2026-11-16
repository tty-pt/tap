class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.2/axil-hyle-1.1.2-brew-arm64.tar.gz"
    sha256 "df9983fffb337c19e5121d5ec012ed940ad7c4a709b9a461b2e232f3818cfcd5"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.2/axil-hyle-1.1.2-brew-x86_64.tar.gz"
    sha256 "a58d5d3f1c0b7fb623daf2f5140e6146a601897e6a744324e937f81af9bbe8f1"
  end
  version "1.1.2"
  depends_on "axil"
  depends_on "libstele"
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
