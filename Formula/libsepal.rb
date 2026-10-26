class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.3.0/libsepal-1.3.0-brew-arm64.tar.gz"
    sha256 "0ff5dae05a9e301e4032d078f94188acf3bd84020c7604479cef4fe173646a18"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.3.0/libsepal-1.3.0-brew-x86_64.tar.gz"
    sha256 "fb96ee8ecac20ace07ea696607f01e729cac79b2c7eb99e5cac046ced7418594"
  end
  version "1.3.0"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
