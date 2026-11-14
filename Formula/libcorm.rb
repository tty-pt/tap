class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.1/libcorm-2.4.1-brew-arm64.tar.gz"
    sha256 "a6ae129c812de9a068a62a3226cc6993727730cc8f6a53b9d9e5d254d6107546"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.1/libcorm-2.4.1-brew-x86_64.tar.gz"
    sha256 "6e6888eb98e7d20b70f686875cd67ef491cd792a8dc0afaf660588355a71320d"
  end
  version "2.4.1"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
