class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.0/libislet-1.5.0-brew-arm64.tar.gz"
    sha256 "4428d5277968b56ce65db4c17a42b3b8c2352da1e3f18fe0523bc1a10a8672a2"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.0/libislet-1.5.0-brew-x86_64.tar.gz"
    sha256 "17c318932f52ad7ef32a2db6c2caa9e4814e70dfe51a747869358f0c12baf049"
  end
  version "1.5.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
