class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.1/libqsys-1.3.1-brew-arm64.tar.gz"
    sha256 "8a7d4ba4c5f64205ee12d70d650de6e4286aafee7f14cb96ae5989a8ee7b1272"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.1/libqsys-1.3.1-brew-x86_64.tar.gz"
    sha256 "032a7e43165fe36bd79a84d8e1ffd8cf3a38b5a6909a6a7cf2ff99ea87246018"
  end
  version "1.3.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
