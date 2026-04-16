class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.9/libndc-1.0.9-brew-arm64.tar.gz"
    sha256 "827de3a1c640a15120ab108e75ae4bfa56a3b2319a6983c5cfdfcc31577fad79"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.9/libndc-1.0.9-brew-x86_64.tar.gz"
    sha256 "8600f8b8e14bd17236c585a90d50a4a9c6ca9e38079b0f5f404e293be2fa71ac"
  end
  version "1.0.9"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
