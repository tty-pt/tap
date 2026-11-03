class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.1/libxylem-1.7.1-brew-arm64.tar.gz"
    sha256 "f42faeaa94032ce3d7899a5b8d7bb6de3e6e3469bf86b2f14bda17976185db05"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.1/libxylem-1.7.1-brew-x86_64.tar.gz"
    sha256 "d7fb448472417b46888f422ef691351942604a1f741cccf7a83ef9655c26bca3"
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
