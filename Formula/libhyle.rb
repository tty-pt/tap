class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.3/libhyle-1.7.3-brew-arm64.tar.gz"
    sha256 "01a24cceef0158bb545dd42774f211fd3a21b1e2e870a313d38481c236aba9ff"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.3/libhyle-1.7.3-brew-x86_64.tar.gz"
    sha256 "afcb2c31f0b8b947791cdf0c3355b13b7b94ab4d5e23d0fd153cec09de439489"
  end
  version "1.7.3"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
