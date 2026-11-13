class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.0/libjoint-1.7.0-brew-arm64.tar.gz"
    sha256 "040d5ff726c64abe16d62503e79c64f657c5a3fe1c4a3e3221c37438bf7c3bc5"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.0/libjoint-1.7.0-brew-x86_64.tar.gz"
    sha256 "4227b90ffdb39dce5c7b411d695f8e505e9447f0bd5da4673cd1fa6850ae48de"
  end
  version "1.7.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
