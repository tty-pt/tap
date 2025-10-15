class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-arm64.tar.gz"
    sha256 "0ca37eea7fdc473e66c7c7b11cc9116a27c0fc3859026b06950db1e1ece82ea6"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-x86_64.tar.gz"
    sha256 "199df46f82c9b566a64257ea390ca5b9e2f2afa40d2ce9912a2685dd9549dc4e"
  end
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
