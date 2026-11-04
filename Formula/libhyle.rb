class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.1/libhyle-1.6.1-brew-arm64.tar.gz"
    sha256 "05da50563d01b229ee939f47b548fa40724a63dbe8d97fa6d591fe53c480481f"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.1/libhyle-1.6.1-brew-x86_64.tar.gz"
    sha256 "031df903363f4a3812458f28261ebff566195309927a2e9a5efdbb4d4c2a79a3"
  end
  version "1.6.1"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
