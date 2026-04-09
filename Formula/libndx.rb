class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.7/libndx-1.0.7-brew-arm64.tar.gz"
    sha256 "738bcc1196cb3adc495dd5ed1e357416538089e631a0552ae85b0965b4998ce2"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.7/libndx-1.0.7-brew-x86_64.tar.gz"
    sha256 "366f133eab40d33b61d830515125ec3a537ff2fb7e1c60d188f98202d508aeea"
  end
  version "1.0.7"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
