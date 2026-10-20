class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.0/libqsys-1.3.0-brew-arm64.tar.gz"
    sha256 "9d0929d694f9c2da8eb80781c69df36a3d7acb2cd6ec2e4e7465938529ab9fd9"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.0/libqsys-1.3.0-brew-x86_64.tar.gz"
    sha256 "4889c04c0fdee69323b5ebe5bf748d674a2da8652a8cc151880bdd2ae8547ee1"
  end
  version "1.3.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
