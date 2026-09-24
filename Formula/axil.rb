class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-arm64.tar.gz"
    sha256 "53d1819e1a9c438290e0600f8bd20b5abcf8fcacf3cd6a574a883d44e006e061"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-x86_64.tar.gz"
    sha256 "d42bdef7f4d68e2f19c4015840a462db98b35c08f512f48c008281aa758ea198"
  end
  version "1.4.0"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
