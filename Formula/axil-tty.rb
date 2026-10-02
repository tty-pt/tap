class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.1/axil-tty-1.3.1-brew-arm64.tar.gz"
    sha256 "4ccc455b84ec53723d692ff6e0d3c0f4a48329b540ff7cffc436dcb4159443ab"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.1/axil-tty-1.3.1-brew-x86_64.tar.gz"
    sha256 "1a30b48ef7e55b87f76c188a702e97c7f40a2e381ac8a9c770e2a01b7044cdce"
  end
  version "1.3.1"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
