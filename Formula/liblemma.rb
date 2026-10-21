class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-arm64.tar.gz"
    sha256 "83c0634021bc75c3146b4218b40d4d9deb3ebba31c8ac49d90484f6232b78315"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-x86_64.tar.gz"
    sha256 "5434008d02ee8bd2f1feb5b1034b63612b5bc034a2884d8e433f25ed256ba73f"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
