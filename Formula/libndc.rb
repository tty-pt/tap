class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.2/libndc-1.0.2-brew-arm64.tar.gz"
    sha256 "7b381098dab5ce25752ea938a5eab8430fadfc36529d99dc2770c8f6eeb41ddf"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.2/libndc-1.0.2-brew-x86_64.tar.gz"
    sha256 "a8dab7f83bd3afb6aed27c509208cf3dfd7079b6aa4207c8157ae50c8e8bcb5c"
  end
  version "1.0.2"
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
