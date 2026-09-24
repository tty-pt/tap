class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-arm64.tar.gz"
    sha256 "12411756d2edef216ab7bd946a163cd1894bad7e831eb575a800fc8c00f2b22a"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-x86_64.tar.gz"
    sha256 "946d77871acbfb3f74002250577926a5c5052aa8e2cd2d724417c0d296fbafa8"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "cmake"
  depends_on "libomp"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
