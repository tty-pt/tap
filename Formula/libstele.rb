class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-arm64.tar.gz"
    sha256 "e00b49554d5fa44666e6564b458c3d273b5ff4fd982686c4314b4d0a82b2fd9c"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-x86_64.tar.gz"
    sha256 "5a5212c0f2ca23d2359eb96e30cc436a9461c0a7e7dd2fb0dfa53c019349c713"
  end
  version "1.5.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
