class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.1/libqsys-1.0.1-brew-arm64.tar.gz"
    sha256 "1de662f506de749c4f44dbfeb79486e00d505d7338e5c9783947b8ec43e7acd5"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.1/libqsys-1.0.1-brew-x86_64.tar.gz"
    sha256 "72d5d0d6c0ff44bc8c5029880fee035a54b0293343cbaf1282ce99a7a74503b2"
  end
  version "1.0.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
