class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-arm64.tar.gz"
    sha256 "19478cccd889137e1789895a0ae27b1ceba0f350777de68b5ddf94f7ecbd9ab0"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-x86_64.tar.gz"
    sha256 "e57ea8056e655ba0fa6850914e5b914773fd3c38092d90f3a2726c3281bdf72b"
  end
  version "1.3.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
