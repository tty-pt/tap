class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.8.0/libjoint-1.8.0-brew-arm64.tar.gz"
    sha256 "b8d29fa8f284ed5d7feff78d80152e073befa140d4e63ceab486b7c279384116"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.8.0/libjoint-1.8.0-brew-x86_64.tar.gz"
    sha256 "1b0551d93368feb0df3ad777e5e2e55545d81eea8e07a7cff099fbd2343e7829"
  end
  version "1.8.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
