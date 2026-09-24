class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-arm64.tar.gz"
    sha256 "8d95d1d1d4d0dbf1803f820a9bdd3b83a71490a0726ac5eb5dda56eafb3d0331"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-x86_64.tar.gz"
    sha256 "068bbf245e35b22a8f43a9789ebe75818571bc5ea2a79a8305b49d24e4585b17"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
