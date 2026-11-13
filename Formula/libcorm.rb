class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.1/libcorm-2.3.1-brew-arm64.tar.gz"
    sha256 "c7060427e0cccfdc14f1eed47e90490d530cbd00e9de9d5fc4684790687cea0d"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.1/libcorm-2.3.1-brew-x86_64.tar.gz"
    sha256 "905843a726cb38591bae9f0a0838bb5e8e240e80210023854ee155fb47424d22"
  end
  version "2.3.1"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
