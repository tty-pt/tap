class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.1.0/libndc-1.1.0-brew-arm64.tar.gz"
    sha256 "1455fdee84464d9476ec983432054e5e407bc385e2d4be7867cf5fce935c7d68"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.1.0/libndc-1.1.0-brew-x86_64.tar.gz"
    sha256 "acccc293e664acc0d1c1aa6346e83a9e9e1b55dbe0eab3be89ff892826e029b8"
  end
  version "1.1.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
