class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.2/libjoint-1.7.2-brew-arm64.tar.gz"
    sha256 "1ff1116339e631f85cff4b6e99cc2f9f0885235bcef1a0b2b57af212b559ede4"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.2/libjoint-1.7.2-brew-x86_64.tar.gz"
    sha256 "425e755b4731c280e7495b42d6aa08786711c8106c79d27a60ada25068dda0b0"
  end
  version "1.7.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
