class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v1.5.0/libcorm-1.5.0-brew-arm64.tar.gz"
    sha256 "d72c85e7894225af1ae3ab48d411a7906a2b5f43b230762e3a59cedcea2905b1"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v1.5.0/libcorm-1.5.0-brew-x86_64.tar.gz"
    sha256 "5546581cae1f70f0c058394188fefab76c17bf15f454eb335a335b1a78bfbfe3"
  end
  version "1.5.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
