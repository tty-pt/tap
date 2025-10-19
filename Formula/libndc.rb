class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-arm64.tar.gz"
    sha256 "65e79820ccee12cbabdff46be0ff8d71f78f4f8d5acfa477fa596ddac6a9568d"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-x86_64.tar.gz"
    sha256 "8ba3a9eb6a08315aceefd29b185dbf181f9d865eb2a7c08b9a7fc3004bcd37c0"
  end
  version "0.17.0"
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
