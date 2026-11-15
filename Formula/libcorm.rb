class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.2/libcorm-2.4.2-brew-arm64.tar.gz"
    sha256 "cb696987b33ad3265309fc4d1ef4ea1344ca68c5acce1bc4fb933bd8377975b2"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.2/libcorm-2.4.2-brew-x86_64.tar.gz"
    sha256 "7b7ea289074da8057b0cca299d256166d25de61e8d2628383239814a8df958bb"
  end
  version "2.4.2"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
