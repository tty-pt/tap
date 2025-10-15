class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "b1cb31ff0b7ac3e85651902f20b1b00e3237e12dc3294f5b83b626cd21311907"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "81200407a1721b75712f820f903f3eaa1e45277e665f70286c083d2e9d0acfa5"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
