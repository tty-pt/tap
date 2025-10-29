class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-arm64.tar.gz"
    sha256 "778cfc251fd27965c6a664a81ecabe8262b4141d2859d8197ed4cd666bdc13a9"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-x86_64.tar.gz"
    sha256 "020cdaa6405977b79c95afc525c261cb006c12521003f9e2f30bdd69b9abae34"
  end
  version "0.0.1"
  depends_on "libgeo"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
