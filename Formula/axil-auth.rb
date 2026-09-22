class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-arm64.tar.gz"
    sha256 "c226a22b229d1fb526d304d90c550cc6cffe407f252a7622280e743e5944f89e"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-x86_64.tar.gz"
    sha256 "ee33106b7641e7d3ccff562c3897c3821a3703d18e76e8c49b84e9820fa5a375"
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
