class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.0/liblemma-1.3.0-brew-arm64.tar.gz"
    sha256 "0f26757a3e8a2d548cfd6c3df3167b3384693f97c846ad26fcf9ab8a65398278"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.0/liblemma-1.3.0-brew-x86_64.tar.gz"
    sha256 "25ff2c2f69334f66c85c1e1e62f9897509adf271832c6f742d1278b76548ec53"
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
