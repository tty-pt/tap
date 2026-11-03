class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-arm64.tar.gz"
    sha256 "dd7faad45710e57f46599e7074664925e83c182ff5d772abf3df6d03577fc606"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-x86_64.tar.gz"
    sha256 "74969c400bee9b3d541d75db8b85f847c3d8f8a116f4800c8e5be278d2de3433"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
