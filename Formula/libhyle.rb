class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.1/libhyle-1.7.1-brew-arm64.tar.gz"
    sha256 "b5ae3bbefef476e95eb283307f9d8c01da688b8cd4b53f4d2c31ee8d5270064a"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.1/libhyle-1.7.1-brew-x86_64.tar.gz"
    sha256 "46d1f15fef81cedd4feca699db8f2863bf5717d5a0e9661b6fe494f01668209a"
  end
  version "1.7.1"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
