class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-arm64.tar.gz"
    sha256 "bf6158126f7033c3f0a5610738c67d2710575f5373b274e8afd49ed3571db8d3"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-x86_64.tar.gz"
    sha256 "e1f70645c58bfecb4b334aa05fdccaeb97e56399292db663d9996667c932161f"
  end
  version "2.2.3"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
