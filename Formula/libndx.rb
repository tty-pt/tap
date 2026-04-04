class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-arm64.tar.gz"
    sha256 "b56edefb15d7ee004b98ecdbe2a2b025e7465c35cd9b18ee20cb826bc29adb66"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.0/libndx-0.2.0-brew-x86_64.tar.gz"
    sha256 "2a9efb2e5bc6c15d440422991b6c4b2a47529d7568139577062b0042076e5588"
  end
  version "0.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
