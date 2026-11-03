class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-arm64.tar.gz"
    sha256 "e1e95e1b532dfb588316f43fc6f3350c69f1537aa720c9259c19ba863b22841d"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-x86_64.tar.gz"
    sha256 "a98c7764476f93230c7ded3d397066d01c7ddeeddcd32cf3134d48ab8159c2ee"
  end
  version "1.5.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
