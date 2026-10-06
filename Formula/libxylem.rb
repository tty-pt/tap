class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.5.0/libxylem-1.5.0-brew-arm64.tar.gz"
    sha256 "84535ce908ee25a5347ab3488da714cb20a3a48a02c51a15e77e5e992ee53366"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.5.0/libxylem-1.5.0-brew-x86_64.tar.gz"
    sha256 "02b190628716fa5891b92c212b8d35c27ff4050987684c5edcbf19946b208a73"
  end
  version "1.5.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
