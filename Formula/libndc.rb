class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-arm64.tar.gz"
    sha256 "95c162b4edbf24812db00ea8093ba56e56acb89472619f91e5b459cd894f33c2"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-x86_64.tar.gz"
    sha256 "60b22be4a46664c5449973bcbf8dfb1bb076f0eefc196e0a4a1c607d11588ba1"
  end
  version "0.16.0"
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
