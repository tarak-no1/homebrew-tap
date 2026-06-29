class ClaudeAgent < Formula
  desc "Local Mac agent for Claude Personal Assistant"
  homepage "https://github.com/tarak-no1/claude-agent"
  url "https://github.com/tarak-no1/claude-agent/releases/download/v0.1.0/claude-agent-v0.1.0-darwin.tar.gz"
  sha256 "c1a15e87ecb87e7df418fc67d590f4ef08b5fc1d047f49c77d9f132e47bfc4f1"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "claude-agent"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-agent 2>&1", 1)
  end
end
