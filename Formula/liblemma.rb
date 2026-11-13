class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.1/liblemma-1.3.1-brew-arm64.tar.gz"
    sha256 "5d6570901f6bbe3c420db14c4a966a6bfcea8c8e8fe61742e4a3b1aa8a981f30"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.1/liblemma-1.3.1-brew-x86_64.tar.gz"
    sha256 "cff7908cca3ca0bcf4b7c239cffa5c0223a177ee66c53a788eda77028db023c5"
  end
  version "1.3.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
