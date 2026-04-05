class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.2/libit-1.2.2-brew-arm64.tar.gz"
    sha256 "e9c56f8fe6fe62b40114c70a2f57e8f4b4ecbac7cf1428576f9721d061e29dd0"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.2/libit-1.2.2-brew-x86_64.tar.gz"
    sha256 "9dd38b4a794f1414adb1a3961db6a0d68047f4f0cea83312d2f4bb68fd8eb50b"
  end
  version "1.2.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
