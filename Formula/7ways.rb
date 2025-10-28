class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-arm64.tar.gz"
    sha256 "e5f35a0536ecdbed2c1088abe482b92ea2c162d71130e2d2bf11d233be78050b"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-x86_64.tar.gz"
    sha256 "fc1804e45b3e171c0279b4e0ae96dbf0ace5da5490047862d42cec7335106003"
  end
  version "0.0.1"
  depends_on "libgeo"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
