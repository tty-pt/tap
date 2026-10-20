class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.1.0/libsepal-1.1.0-brew-arm64.tar.gz"
    sha256 "03e31e2ad231e4709b2c1a510134377479394a55de817e3917bbb07a05f5a997"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.1.0/libsepal-1.1.0-brew-x86_64.tar.gz"
    sha256 "3f31e579d43ba9c2282d506fcaa509517708640eddae302ec28146ea32c57826"
  end
  version "1.1.0"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
