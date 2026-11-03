class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-arm64.tar.gz"
    sha256 "7380bafdb6dca6afc00d8080a574423e7ac062079f3ba261d85be95f22b3abd1"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-x86_64.tar.gz"
    sha256 "65e4eaf82202731d3615ff2b72ab9e9e72203fc34c782cede05adc2fcf61f8a8"
  end
  version "2.2.2"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
