class ClaudeAgent < Formula
  desc "Local Mac agent for Claude Personal Assistant"
  homepage "https://github.com/tarak-no1/claude-agent"
  url "https://github.com/tarak-no1/claude-agent/releases/download/v0.2.0/claude-agent-v0.2.0-darwin.tar.gz"
  sha256 "262e3090e83d48eaa2dccd5076753c37edb6ae383683524fda8d2d334e7ce4ca"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "claude-agent"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-agent 2>&1", 1)
  end
end
