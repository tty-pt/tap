class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.1/libislet-1.5.1-brew-arm64.tar.gz"
    sha256 "1b370f5485257e5cbdee358bdde7441957ca88cb974fcfad615e965c02d59113"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.5.1/libislet-1.5.1-brew-x86_64.tar.gz"
    sha256 "2e656f6324fbe5c45666379c9fbd7d5c7a9e6f360adc81bbce069b23fa9173d0"
  end
  version "1.5.1"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
