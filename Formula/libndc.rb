class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-arm64.tar.gz"
    sha256 "4c581d4b211e984b9b04d48cb42adc2726c6670a750e070ece8eaa73cf0d9ed9"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.16.0/libndc-0.16.0-brew-x86_64.tar.gz"
    sha256 "2eada387127efc74408a844e03a1adc04eedad8de617d5a48b639435d2b8a0a1"
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
