class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.5/pgfmt-darwin-arm64.tar.gz"
      sha256 "ea91078244252ab2de905b99716d5f34fea25bdcf471dcb2f0efa7d597d757a3"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.5/pgfmt-darwin-amd64.tar.gz"
      sha256 "146438bfdebe5a0831137794685f44429fe5fc998353c78c51257db03bb44620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.5/pgfmt-linux-arm64.tar.gz"
      sha256 "10c982030997390bb18b7483b1213df8239f2ebbf1ed20f613c0c41d16116bad"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.5/pgfmt-linux-amd64.tar.gz"
      sha256 "2462abfafd497f82496c98e5ee483f6458c2829f7a7b839c3fd2814d5cdb13cb"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "pgfmt v#{version}", shell_output("#{bin}/pgfmt -version")
    assert_equal "select 1\n", pipe_output("#{bin}/pgfmt", "SELECT 1")
  end
end
