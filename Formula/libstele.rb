class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-arm64.tar.gz"
    sha256 "f1929271a29de24e04797d3944b4e33fd7a873010cdf312a08d63ad4f1ae80d1"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-x86_64.tar.gz"
    sha256 "6230b075f0458fceecf894e34bea72fa41f0c0de508a1d8def9d87900bf8c3df"
  end
  version "1.5.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
