class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.3/axil-hyle-1.1.3-brew-arm64.tar.gz"
    sha256 "ada3f4643e0404ce01136f3749f4e082f920217b14559c5fe5f18d6488ebe16a"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.3/axil-hyle-1.1.3-brew-x86_64.tar.gz"
    sha256 "0c34d6bdfc8ac694265861ac998e3bad5102e249a1b5a56fb1015d49e8263fac"
  end
  version "1.1.3"
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
