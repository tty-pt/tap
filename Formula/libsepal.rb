class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.0/libsepal-1.4.0-brew-arm64.tar.gz"
    sha256 "4b1bbdeffe8286d63bb39095464bb5f847a1d1606b3a9efdbaa1ec32ab4e7892"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.0/libsepal-1.4.0-brew-x86_64.tar.gz"
    sha256 "aa41509ceea2139b4e70bbb894ad7d1a6ef0e599bf13cdeb073b3df80484d62f"
  end
  version "1.4.0"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
