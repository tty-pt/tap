class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos.tar.gz-arm64.tar.gz"
    sha256 "3ddd9078d4cc4467e0f9e35e3be4cc2d0b82d4a8784e10542664a79f527a022c"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos.tar.gz-x86_64.tar.gz"
    sha256 "08b2bb014541e608ba048d5c9b055ccdbdb2442bea8be168a4c976531c81600f"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
