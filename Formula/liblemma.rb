class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.2/liblemma-1.3.2-brew-arm64.tar.gz"
    sha256 "88ee18ca8fa36839399da6e21249f83ed07bfed644b9210bac186ff7d537aafd"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.3.2/liblemma-1.3.2-brew-x86_64.tar.gz"
    sha256 "8b9eeaf65884cede21c7cce60cb4bbc8659eaac5092b8ba5ac5654b3a1598cc4"
  end
  version "1.3.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
