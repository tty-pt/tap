class Libstoma < Formula
  desc "libstoma binary package"
  homepage "https://github.com/tty-pt/libstoma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-arm64.tar.gz"
    sha256 "8ff0afa136a1b5dcd8636e7ba0843ddb8133a8ab49ed366f46811c3093df42e4"
  else
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-x86_64.tar.gz"
    sha256 "29f8ccb0480a401b02e317bd2deb2383415c4c1a851f8e0db89c9100af93267f"
  end
  version "1.0.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
