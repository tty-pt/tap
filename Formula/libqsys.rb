class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "1c7cd966b99381085d31df80d42081db0b62521077a16a3f2aebd09bbc01bfbb"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 "3caeaea24396475fc37cb6406c44dbc19d92059263aac19e739fa1259b132ba7"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
