class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-arm64.tar.gz"
    sha256 "7d79b7088f2f46806bcf465d57a6ab303bdc98ab1ab2fc8bb9adffa881c416ce"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-x86_64.tar.gz"
    sha256 "fb44bdbe0198879ef543af58832d4890b04f50d58f0eaf3046faa543b3495192"
  end
  version "2.2.3"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
