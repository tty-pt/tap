class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-arm64.tar.gz"
    sha256 "3566da0cd5124e83da24579099b475a62bfa389400ce487069c9bdfd0fa22e24"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-x86_64.tar.gz"
    sha256 "1c6c4a2e69f5404ea67cec08b02bf0b5d49a2768d8a99efc718f2ab2f97f6eaa"
  end
  version "1.6.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
