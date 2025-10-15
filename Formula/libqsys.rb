class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-arm64.tar.gz"
    sha256 "ac70202210bc66e626671cfcfaa432abc7f6f2093084805eab98bc96b60f4662"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-x86_64.tar.gz"
    sha256 "ca45ce4c99b1abda448a7820b8671683d18604c340cec908be84c48031e0c176"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
