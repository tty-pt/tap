class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.2/liblemma-1.2.2-brew-arm64.tar.gz"
    sha256 "1d66ab83843780715054ba692f02e823774e1c1d81bc7ad86285a395633bfb8f"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.2/liblemma-1.2.2-brew-x86_64.tar.gz"
    sha256 "4412a4486433bd8ab622accc9bd1ef2862f0a86b5f5ba0d867731a2163d9a965"
  end
  version "1.2.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
