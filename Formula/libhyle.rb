class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.2/libhyle-1.7.2-brew-arm64.tar.gz"
    sha256 "920775b0922d31ab4d7448a9aa71530ec0675142f4c9cefe6ba31127c779e07f"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.2/libhyle-1.7.2-brew-x86_64.tar.gz"
    sha256 "818b92da9568e379c8fae8d3100cf82bd4d8d3596f80352d01479d59141e3c69"
  end
  version "1.7.2"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
