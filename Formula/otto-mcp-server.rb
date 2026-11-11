class OttoMcpServer < Formula
  desc "Model Context Protocol (MCP) server for the Otto Context Engine"
  homepage "https://github.com/OttO-Context-Engine/otto"
  version "0.1.0"
  license "MIT"
  

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OttO-Context-Engine/otto/releases/download/v0.1.0/otto-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "ARM64_SHA256"
    else
      url "https://github.com/OttO-Context-Engine/otto/releases/download/v0.1.0/otto-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "X86_64_SHA256"
    end
  end

  on_linux do
    url "https://github.com/OttO-Context-Engine/otto/releases/download/v0.1.0/otto-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "LINUX_X86_64_SHA256"
  end

  def install
    bin.install "otto-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/otto-mcp-server --version")
  end
end