class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-arm64.tar.gz"
    sha256 "68724553944c572198d7ebc022106a4729489af8513812c7f183279f3e3e00ec"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-x86_64.tar.gz"
    sha256 "981bd7f701594d03751369e7b36963ca9d22057697d21b2d9af0e81dc85810f0"
  end
  version "1.0.0"
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
