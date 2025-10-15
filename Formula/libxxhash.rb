class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "3aada0a958dfa1fdf25f7bf86c8a1b19551b3914d89dae7e738be55c11bbf097"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "33e081c5167404278c6e46c82cacd7191db2d53096639e9a5164c901dcc4bc51"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
