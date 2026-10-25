class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.2.0/libhyle-source-1.2.0-brew-arm64.tar.gz"
    sha256 "e34252cebb006ced70cc20a9c7939bae854d2d6524216984ab357efa65e2b4bf"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.2.0/libhyle-source-1.2.0-brew-x86_64.tar.gz"
    sha256 "731e1e4ffc7453f028cfa2230fdedfb19d67b84daf4f74624919e087561dbe85"
  end
  version "1.2.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
