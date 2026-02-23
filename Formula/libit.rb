class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-arm64.tar.gz"
    sha256 "5b6586153873724bf554fe83e6c179b1da1a509515d4bd58b1f23d4e8492fc76"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-x86_64.tar.gz"
    sha256 "70fb86a45758f9abe3e101a015931ce705bf0b6e24074d482ccb3659f0c63b67"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
