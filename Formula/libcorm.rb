class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-arm64.tar.gz"
    sha256 "7dc77c846654d092f4a5e4594f6be6d423be6b4f321ab7dcd2b01fa58501026a"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-x86_64.tar.gz"
    sha256 "6d17bc49905c88788410db229850b36832da43d531a230fd70a9e3a6a8da5b5c"
  end
  version "2.4.0"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
