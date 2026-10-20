class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.4.0/libjoint-1.4.0-brew-arm64.tar.gz"
    sha256 "9ae546ac8d2f873a9c837d11387ec26aa3577a6aef7df23e2f2445f545f34b1a"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.4.0/libjoint-1.4.0-brew-x86_64.tar.gz"
    sha256 "b78e03371fbc9f355536c02c28e28f87630440a045d827ae54f181c82be646c8"
  end
  version "1.4.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
