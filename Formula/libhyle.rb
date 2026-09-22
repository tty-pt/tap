class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-arm64.tar.gz"
    sha256 "a73f22f64f34274b8c987360c42179c654a873803df7f3e32b8d31da8a141e80"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-x86_64.tar.gz"
    sha256 "706b497c2858462bc25c67a43be2aa689816d9d96b73b595d499621eee51091f"
  end
  version "1.3.0"
  depends_on "libqmap"
  depends_on "libstoma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
