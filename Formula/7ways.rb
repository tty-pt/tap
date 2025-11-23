class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.3/7ways-0.0.3-brew-arm64.tar.gz"
    sha256 "87e70142dd303a3f2f7b9809f6a314fb2bd2b28b28cf78c3aa64451ba24d2628"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.3/7ways-0.0.3-brew-x86_64.tar.gz"
    sha256 "c9ae86d4daf1feb4b797247a824bff95fd57234f063e9c682a998286fd480fba"
  end
  version "0.0.3"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
