class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-arm64.tar.gz"
    sha256 "da62c1f11ab8b99343ce77957c86d602a9076f05c68cf3fef486771532b4a04b"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-x86_64.tar.gz"
    sha256 "a6b839882df906143317822e1b99b23cac6f06b988e8f08d055f4f2323085a24"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
