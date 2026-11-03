class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-arm64.tar.gz"
    sha256 "6bbac92eb7afa67e34ddebe9f2b8c462b04fd8d14f95b3287f78af051f5fcaa6"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-x86_64.tar.gz"
    sha256 "161920b1d5fd6b8c2762052806dc664cc5107b6818b4f524de7678b78ece1b05"
  end
  version "1.5.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
