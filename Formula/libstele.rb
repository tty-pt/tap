class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-arm64.tar.gz"
    sha256 "2e218976e07378118697d8097dbc50324d3bdce7f50c436a9261e862c9a43d85"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-x86_64.tar.gz"
    sha256 "fc17d0a0429349e5d5445435622bbdd82a6a8a51c23b1d6ec4be0cbf7b61edc0"
  end
  version "1.5.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
