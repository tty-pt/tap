class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.0/liblemma-1.2.0-brew-arm64.tar.gz"
    sha256 "c850ac9f3cd89b6c4cc8292d7a0ee9fdc1970bd8d499deaba600b71490413a61"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.0/liblemma-1.2.0-brew-x86_64.tar.gz"
    sha256 "859280ae1eece2e40571d398195e26edd0e6ba8afd3d55349188a0af09e52a3e"
  end
  version "1.2.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
