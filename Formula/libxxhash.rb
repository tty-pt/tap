class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "e43e125f1a0122fcd0d9fb79587199e385b48e174f32e0f4652d433aeb2526ad"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "b3304e4835ede198ebf11af95bf9221dbbcfd4ecf1f50901cf39691f25db4737"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
