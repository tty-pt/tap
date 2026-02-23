class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-arm64.tar.gz"
    sha256 "14cbd3bcf266b8e6540ab97913cdeb0af6faef0c642c5b27048379f831ed9e40"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-x86_64.tar.gz"
    sha256 "456c195709fee76cbef2212b3f89e2eba8e911ed95bb59fafd2ae61210096667"
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
