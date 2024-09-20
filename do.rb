class Do < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/do/archive/refs/tags/0.1.13.tar.gz"
  sha256 ""
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
  end
end 
