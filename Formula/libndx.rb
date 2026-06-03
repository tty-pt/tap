class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.3.0/libndx-1.3.0-brew-arm64.tar.gz"
    sha256 "b882a89f3261fcd078d8711408d7868d9cb989fbb450736d361bca06dd0a4b69"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.3.0/libndx-1.3.0-brew-x86_64.tar.gz"
    sha256 "81a558bb3f2afece308f2da9b5de997730235f5e3188661d1bde0461a74c8c87"
  end
  version "1.3.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
