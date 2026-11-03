class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-arm64.tar.gz"
    sha256 "f6b6f60d170c44d831c8b3add36c23d21dbbbc2d891b70df978e1a0722d1bfb5"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-x86_64.tar.gz"
    sha256 "c164bafbf96795520f563709fe691143a167e3cd8ffc9afbff658c9f53af5967"
  end
  version "1.5.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
