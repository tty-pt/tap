class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.1/libxylem-1.7.1-brew-arm64.tar.gz"
    sha256 "91877a5ad9cdc1d0809f5d48dd2b2a97616b2e8896ee9ebd1f551ded3dd390c6"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.1/libxylem-1.7.1-brew-x86_64.tar.gz"
    sha256 "352f704e669c651c9bdb1304aa85c50dbaca1158540f5030554c5cfd570bc762"
  end
  version "1.7.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
