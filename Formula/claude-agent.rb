class ClaudeAgent < Formula
  desc "Local Mac agent for Claude Personal Assistant"
  homepage "https://github.com/tarak-no1/claude-agent"
  url "https://github.com/tarak-no1/claude-agent/releases/download/v0.2.1/claude-agent-v0.2.1-darwin.tar.gz"
  sha256 "26429e7a67ff4446817c3ab55da3954e48447c8107addb129f8885b20e043f66"
  version "0.2.1"
  license "MIT"

  def install
    bin.install "claude-agent"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-agent 2>&1", 1)
  end
end
