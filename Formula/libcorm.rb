class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-arm64.tar.gz"
    sha256 "4c159dbd067debb261b55923c4d5c9a2c0eb98e820faae500cb6ff48cf94eeea"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-x86_64.tar.gz"
    sha256 "f0bbfcdafd8568107cc1d9c7c7af2637d7c3d74088f965066c978c642ba019fa"
  end
  version "1.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
