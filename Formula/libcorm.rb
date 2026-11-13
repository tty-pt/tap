class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.2/libcorm-2.3.2-brew-arm64.tar.gz"
    sha256 "22eaacf04d12349123b6538801360c4b9a99543e04a39518dcc17005aebe8355"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.3.2/libcorm-2.3.2-brew-x86_64.tar.gz"
    sha256 "d20b5137c6242240981b748be3446fe3077fb023c4d872f9b374d83ff38b0509"
  end
  version "2.3.2"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
