class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "0e7c9f3735e93c957479d7eb4c3b3d6cd3c7226c019358a02755131b7b1be4fa"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "afe4e7ccd14c27666c795684ce1cedb8eac895c46ad20f35b1e670247d33cd0f"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
