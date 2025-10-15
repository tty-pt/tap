class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-arm64.tar.gz"
    sha256 "96b7a1075b7bc79fec79a76c80d0cda47fac6249511b8c472edac88cc57f6172"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-x86_64.tar.gz"
    sha256 "83932956477c5ab6e90fc18a940e80cae7ad1526bc404a9da21e015c8fd2bcf7"
  end
  version "0.0.12"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
