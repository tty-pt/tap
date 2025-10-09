class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://tty.pt/brew/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "2c288bac2d024a146100cb55019451a2ebf4d098a6062a60cae5adb86de20f02"
  else
    url "https://tty.pt/brew/libqsys-0.0.11-macos-x86_64.tar.gz"
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
