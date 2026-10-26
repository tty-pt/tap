class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.1.0/libcorm-2.1.0-brew-arm64.tar.gz"
    sha256 "3995651413eeea79119e8cf6a314747de101eeb92c4a00bddab6f26675438fd9"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.1.0/libcorm-2.1.0-brew-x86_64.tar.gz"
    sha256 "5f647183ad274deae0c40dd0610060e7ae7e403542d23c208b45beca0e8fdc8e"
  end
  version "2.1.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
