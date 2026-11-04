class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.4/libcorm-2.2.4-brew-arm64.tar.gz"
    sha256 "df483d395466148d7b4ac5538a024b123590ed0dac59552e98584aa2b8596231"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.4/libcorm-2.2.4-brew-x86_64.tar.gz"
    sha256 "6ff1826291350c06b009b73078b58da1a385f36f0042a420b165f35757afac1b"
  end
  version "2.2.4"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
