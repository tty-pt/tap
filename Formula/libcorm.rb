class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-arm64.tar.gz"
    sha256 "65fd5483341aa09a544405677630bbcf725ff4d83040d456442d1c949925bd37"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-x86_64.tar.gz"
    sha256 "277e4d3ba93844292ca61f5b35c054fb370ac03071b3df8a5c9c1e8dfd24034d"
  end
  version "2.0.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
