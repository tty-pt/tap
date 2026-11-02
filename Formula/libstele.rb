class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-arm64.tar.gz"
    sha256 "78586a29cba13fa9e22ee6c105366b571d82291652adb8bb83eca713c7066361"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-x86_64.tar.gz"
    sha256 "29ba1efac58e49eac3805e9642c6254232533050cf222d2813d03cb47a69ed5c"
  end
  version "1.5.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
