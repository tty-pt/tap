class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-arm64.tar.gz"
    sha256 "56fd099a59ab043392dbaff46c9cf5c74e3f508aced5224fc207578dcea489ea"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-x86_64.tar.gz"
    sha256 "e9b71d00ac53cd8d75a075b61914355ee95690027d5b36566190fedf51b0f3f0"
  end
  version "1.2.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
