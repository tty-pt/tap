class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.2.0/libhyle-1.2.0-brew-arm64.tar.gz"
    sha256 "81eb6b7196d6d5c6c62b61be3f73107ba224f2a621fffd4cf63e9303fb62d025"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.2.0/libhyle-1.2.0-brew-x86_64.tar.gz"
    sha256 "6af0f5b95885b615ec45188e26b834b6756cebb3c64567e7bedd41cea0312b80"
  end
  version "1.2.0"
  depends_on "libqmap"
  depends_on "libstoma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
