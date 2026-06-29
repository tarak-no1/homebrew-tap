class ClaudeAgent < Formula
  desc "Local Mac agent for Claude Personal Assistant"
  homepage "https://github.com/tarak-no1/claude-agent"
  url "https://github.com/tarak-no1/claude-agent/releases/download/v0.1.0/claude-agent-v0.1.0-darwin.tar.gz"
  sha256 "6a182d6cdf8a0c87fd3144f9ad256ffd59e410dd9b1468a576f33db1ca0fb899"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "claude-agent"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-agent 2>&1", 1)
  end
end
