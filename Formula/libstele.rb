class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-arm64.tar.gz"
    sha256 "a95f344cdb63bb934fc4793e9fd6b6d2a34512f178e9d5182f226e7bd0f59f7a"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-x86_64.tar.gz"
    sha256 "f182a134c7b8705e81afdb3464e04bfd921a84d5cd1efb615ebf1c23398d0e00"
  end
  version "1.5.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
