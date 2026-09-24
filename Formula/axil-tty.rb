class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.1.0/axil-tty-1.1.0-brew-arm64.tar.gz"
    sha256 "9e7104957cf88fb8bc74bf0049da2fce921eb66bb6ef468a8c9b7e863c25397f"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.1.0/axil-tty-1.1.0-brew-x86_64.tar.gz"
    sha256 "6f3ff897c5dbf6ed9e0833cb8f85b6ac997040a8cc2a4d5bdd3acba96929035a"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
