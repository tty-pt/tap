class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-arm64.tar.gz"
    sha256 "e2a9eae05470a99e50db37ab59c8eba3112f22d52e938636adb251c1fe463969"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-x86_64.tar.gz"
    sha256 "7fa00f739b8e6a620204a8d160aa3b059e2a4dd59c9550225394251618ac0be1"
  end
  version "1.6.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
