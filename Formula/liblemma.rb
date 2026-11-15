class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.2/liblemma-1.4.2-brew-arm64.tar.gz"
    sha256 "0f3e38245a9f56e522d71799b6979f76523f01023742c2a6815bf81e4a0e4e02"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.2/liblemma-1.4.2-brew-x86_64.tar.gz"
    sha256 "7a7f74e4e4c6c564467f0cac9295affb8242ddce65c0445a03b25d72d7c37499"
  end
  version "1.4.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
