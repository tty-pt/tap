class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.6.1/axil-tty-1.6.1-brew-arm64.tar.gz"
    sha256 "94a734e6eb27f675d9998f3907588f62191899de2efa973bafb79d54c06e9c6c"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.6.1/axil-tty-1.6.1-brew-x86_64.tar.gz"
    sha256 "ed4e268113f638a7acf776cab82751f75562d2fcd10b36741a15492d549499ce"
  end
  version "1.6.1"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libstele"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
