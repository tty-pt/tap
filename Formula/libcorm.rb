class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-arm64.tar.gz"
    sha256 "87ed619b030e8b7c0e8ba5221eb03b64643ee0aa496734eac021d08d3dc3247b"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.2/libcorm-2.2.2-brew-x86_64.tar.gz"
    sha256 "cdb4d76f1a5d23cf74977855e687f0c8e3865c01091fee2927bc286507b19137"
  end
  version "2.2.2"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
