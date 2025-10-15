class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "cef4b53d98d8b2e013a31a5926b6ffee748f9ac08ab23ba490e6062e5431dbf6"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "461aa4279f36761bcff798720166711b13431a6cc8db6bfc13cf293882b99e13"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
