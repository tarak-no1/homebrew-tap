class ClaudeAgent < Formula
  desc "Local Mac agent for Claude Personal Assistant"
  homepage "https://github.com/tarak-no1/claude-agent"
  url "https://github.com/tarak-no1/claude-agent/releases/download/v0.1.1/claude-agent-v0.1.1-darwin.tar.gz"
  sha256 "a85d3ada1c8abae3af3ed54cdd482b133a3559d0f9c8dc420e7f5cfa4d8e03b6"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "claude-agent"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-agent 2>&1", 1)
  end
end
