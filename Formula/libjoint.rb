class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.3/libjoint-1.7.3-brew-arm64.tar.gz"
    sha256 "a3320c9ae79f470e0d6dd1ba44acb7c6ca97c48b0737533047783a8681cfb2c4"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.3/libjoint-1.7.3-brew-x86_64.tar.gz"
    sha256 "fd928dc7f3967a77bb3557c31a0daf9fb31b7cafeb378af912cb2ae542095b2e"
  end
  version "1.7.3"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
