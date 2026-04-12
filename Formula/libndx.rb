class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.8/libndx-1.0.8-brew-arm64.tar.gz"
    sha256 "2ed14a28865add6f72fbdb11a48bed2bc8c47095a511d85b32281a263156c6a5"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.8/libndx-1.0.8-brew-x86_64.tar.gz"
    sha256 "16e57c0f165ba6f5419e239248ab0dc35fd31af11d0d667d15fbdb9f00dea454"
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
