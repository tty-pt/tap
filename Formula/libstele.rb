class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.7.0/libstele-1.7.0-brew-arm64.tar.gz"
    sha256 "2ed62e0bd0bf7504432fc95133989e5f395c241abd03a325fa194e52d2f89b3e"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.7.0/libstele-1.7.0-brew-x86_64.tar.gz"
    sha256 "716c507e1fb980d87a7b4992d4b8a8ce6c2e6e2a3df8ac63354ab333861e3c03"
  end
  version "1.7.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
