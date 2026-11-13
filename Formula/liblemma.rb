class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.2/liblemma-1.3.2-brew-arm64.tar.gz"
    sha256 "4ab22ae919343fb26e8c96e41bc9d483d94a992a4def3b14397386e19c6e58cb"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.2/liblemma-1.3.2-brew-x86_64.tar.gz"
    sha256 "7411c17c8a14eeeb23463c490641f8d67563c8046dbcfa6eb2cb8fbaae8f0ee6"
  end
  version "1.3.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
