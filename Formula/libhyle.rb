class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.4/libhyle-1.7.4-brew-arm64.tar.gz"
    sha256 "5b0dd5740a9e832fba49472b774e3981c25cbae0a9cb889c1568fb0085a66357"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.4/libhyle-1.7.4-brew-x86_64.tar.gz"
    sha256 "095d6f3b97722f6dca3667096c6f700c8f1fc1f6801b5a357cb6f6c3dfdc5d43"
  end
  version "1.7.4"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
