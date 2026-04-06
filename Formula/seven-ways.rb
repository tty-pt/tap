class Seven-ways < Formula
  desc "seven-ways binary package"
  homepage "https://github.com/tty-pt/seven-ways"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.3/seven-ways-1.1.3-brew-arm64.tar.gz"
    sha256 "623c86f25ac89c8812d8f1f270d579c76491c7457b56f630e4cbd446d4b117b4"
  else
    url "https://github.com/tty-pt/seven-ways/releases/download/v1.1.3/seven-ways-1.1.3-brew-x86_64.tar.gz"
    sha256 "aee506174ce46dec895c56a7dd7cc47c46e40832cade4d5c0b98b264c4155926"
  end
  version "1.1.3"
  depends_on "libgeo"
  depends_on "libqgl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
