class NdFight < Formula
  desc "nd-fight binary package"
  homepage "https://github.com/tty-pt/nd-fight"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-fight/releases/download/v1.0.2/nd-fight-1.0.2-brew-arm64.tar.gz"
    sha256 "0181d83e76e2738ce512e2788b9c7164144034b0544ad732eda4080a47287168"
  else
    url "https://github.com/tty-pt/nd-fight/releases/download/v1.0.2/nd-fight-1.0.2-brew-x86_64.tar.gz"
    sha256 "05c94d16dcfd3f7879274796c43c840c94129ce2d0962caea2dab0a7cbc3ffc8"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-attr"
  depends_on "nd-level"
  depends_on "nd-mortal"
  depends_on "nd-core"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
