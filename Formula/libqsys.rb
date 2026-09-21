class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-arm64.tar.gz"
    sha256 "f36f2146c734d470a66d49cbf113fe7437fe70dfaf36f1332fe949073b676892"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-x86_64.tar.gz"
    sha256 "afa80e97ccc2aa87485e16e32e6bea4287ec1e93e4e4ac46d5060554acce2a3e"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
