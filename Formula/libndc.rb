class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-arm64.tar.gz"
    sha256 "18ae46a35700972768947f6a8b39268be6d3196545e2030bb92edf6f745b262a"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-x86_64.tar.gz"
    sha256 "6078e5d58771c0d5a0afec4bef97ed20b40dd8bc0dd3aa9d4a96537359d099f6"
  end
  version "1.0.8"
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
