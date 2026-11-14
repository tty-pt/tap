class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-arm64.tar.gz"
    sha256 "ad0abf72b10f211e745c4881c36681f0fd0930558418a720a8d229211649c229"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-x86_64.tar.gz"
    sha256 "625b5dda9e1fab2aa037d4660383c989411bd26e26c6ded44792223d3b84a38e"
  end
  version "2.4.0"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
