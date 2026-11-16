class Libchaff < Formula
  desc "libchaff binary package"
  homepage "https://github.com/tty-pt/libchaff"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libchaff/releases/download/v1.1.0/libchaff-1.1.0-brew-arm64.tar.gz"
    sha256 "241ebbc9957a956962fc8f35ae856114d94cfeeb9c452ff75cd54256115239d5"
  else
    url "https://github.com/tty-pt/libchaff/releases/download/v1.1.0/libchaff-1.1.0-brew-x86_64.tar.gz"
    sha256 "b74278f981afb97b642dac42608d6bbe77315f2476ead8456a456c3054071ae1"
  end
  version "1.1.0"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
