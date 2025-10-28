class 7ways < Formula
  desc "7ways binary package"
  homepage "https://github.com/tty-pt/7ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-arm64.tar.gz"
    sha256 "ad5859557226e072542286c1e7d1f632840c0d92a5af79d158c0d7541a2e7a5d"
  else
    url "https://github.com/tty-pt/7ways/releases/download/v0.0.1/7ways-0.0.1-brew-x86_64.tar.gz"
    sha256 "830124ba395b5948a85937a7e908ec3af295687b5c2dd9a1efca79fccd76f898"
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
