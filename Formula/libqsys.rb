class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.0/libqsys-1.0.0-brew-arm64.tar.gz"
    sha256 "767e172cf80941b72a7db16ccc9b447beb11436aecd7de08c666ace46652af0a"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.0/libqsys-1.0.0-brew-x86_64.tar.gz"
    sha256 "2b5d46752622b97e04a4775f9c27ffcf84b3a7057032e941bdc7cbcaab7d145c"
  end
  version "1.0.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
