class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "cff3e6351cb7ad2674ceb7928ebf142de48cb0e1a560bbb5198df4a071574b34"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "821ce73dd47d7499706a2a91addc66ea8d9745c8b48d60cf1dab93a6bfbe4a05"
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
