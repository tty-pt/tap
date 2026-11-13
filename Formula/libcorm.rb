class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.3/libcorm-2.3.3-brew-arm64.tar.gz"
    sha256 "e1190511a50f835b3d84064eae6f59931bfe9befa611a90c1ba4b4ea04621393"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.3/libcorm-2.3.3-brew-x86_64.tar.gz"
    sha256 "b000b18996b144534feb64a2d2d39f3ea75c5f2004b9499bcd7f2af68fbaf8b1"
  end
  version "2.3.3"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
