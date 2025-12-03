class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "05be811f0b1789bbd16a16ba70627c1c232370e597afab81200705ad45de4cc2"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "61668d56d72060485ea88ae7f74df6cc0d6225210061f629f09314a00381bb92"
  end
  version "0.0.1"
  depends_on "cmake"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
