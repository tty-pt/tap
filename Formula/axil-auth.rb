class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-arm64.tar.gz"
    sha256 "b3b58820d14d94f1064925ff532812d2430209f2dc0ad20b3c70e4806674d0c0"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-x86_64.tar.gz"
    sha256 "80d2a692cc03894f88d02e3619e7d4ee8c10ce2ca98e31990955b5a6a1697c8e"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libqmap"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
