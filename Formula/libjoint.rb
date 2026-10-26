class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.1/libjoint-1.6.1-brew-arm64.tar.gz"
    sha256 "793ef49079cb640cd69bc747c8c5c98c1d7eb37c6491c909dd707f118b0245bc"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.1/libjoint-1.6.1-brew-x86_64.tar.gz"
    sha256 "660dc6da528bd73823693253a8c73e0cd6454c59d16cc436a3a4cca86c6a0a65"
  end
  version "1.6.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
