class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-arm64.tar.gz"
    sha256 "703c591e1a05b1717a5dd52b467bf7ac3a3149257962f4936ad6bdf78dd8a832"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-x86_64.tar.gz"
    sha256 "ad55b2a9c04c4ed50226068bd68c7837a628a8b6996cd86c77bfa1016310a46c"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
