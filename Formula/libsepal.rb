class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.3.2/libsepal-1.3.2-brew-arm64.tar.gz"
    sha256 "8cd6fdf15b7435f43b22fab4d7040cf4c3f1ca80dfba8b6ac61c6d42eb887360"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.3.2/libsepal-1.3.2-brew-x86_64.tar.gz"
    sha256 "b5b8919220d2502552c2a579605973a812ef3ff84a8671d218f0cc2d3c7c22b4"
  end
  version "1.3.2"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
