class Ndc-tty < Formula
  desc "ndc-tty binary package"
  homepage "https://github.com/tty-pt/ndc-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-arm64.tar.gz"
    sha256 "6f82a82b9c4bfceb8708b5accb7d5d0c4569cdcae4ace6d0ca2b5b222cfad2e4"
  else
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-x86_64.tar.gz"
    sha256 "335167ad08e1730aed4b6e4e83a4963b125a736619888b1247df767f4bc5d286"
  end
  version "1.0.0"
  depends_on "libndc"
  depends_on "libndx"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
