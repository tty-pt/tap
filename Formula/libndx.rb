class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.8/libndx-1.0.8-brew-arm64.tar.gz"
    sha256 "13c771d199602a662d841528337613cfd7b20a550df58f3c48368e8236e9540a"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.8/libndx-1.0.8-brew-x86_64.tar.gz"
    sha256 "279a6cf204a1738d8b685f9b21fa649075c3139399cbe7df83528ea8e36148f8"
  end
  version "1.0.8"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
