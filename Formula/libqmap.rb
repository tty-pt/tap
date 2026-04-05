class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.2/libqmap-1.0.2-brew-arm64.tar.gz"
    sha256 "35e8c45143790148dd1c020d63d91559705880f80f5842f6a3c828199b3e5f49"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.2/libqmap-1.0.2-brew-x86_64.tar.gz"
    sha256 "1ec1adce72ef5840429186caa68c239b448c4f7fe65380cd30b8a28e7d48244f"
  end
  version "1.0.2"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
