class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-arm64.tar.gz"
    sha256 "202214b1b552413590fd52b877fe370140056bf3d46da934373e537500ec8081"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-x86_64.tar.gz"
    sha256 "938d340caf70dbf8d6991111e9be857bf08e5ab487b36993ac8e85b50d4bf211"
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
