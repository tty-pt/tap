class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-arm64.tar.gz"
    sha256 "58aa994d10e41c7b4c3cfe7683d52ffa123f4b03137a3b2cb450ed1faea4425f"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-x86_64.tar.gz"
    sha256 "516f76e05a19f43a55e6ae652a82326aa2bf75c1f17d88271d73a90518a43b37"
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
