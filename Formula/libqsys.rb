class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-arm64.tar.gz"
    sha256 "19325659903c2b91cfd35fb4abf1130230473dee6329e414cb6cee6ecde5b0a6"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-x86_64.tar.gz"
    sha256 "139fac94bda7c11275c1dce35ed15deb3b4a70564c196168670d3a92db652dec"
  end
  version "1.2.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
