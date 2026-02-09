# typed: false
# frozen_string_literal: true

class XApiCli < Formula
  desc "CLI for posting and deleting tweets with X API v2"
  homepage "https://github.com/eliaseffects/x-api-cli"
  url "https://github.com/eliaseffects/x-api-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f043170951c22d84e4c8728f388734ebcfd3388e1f8b9813ab04477549850ece"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    assert_match "Usage: x-post", shell_output("#{bin}/x-post --help")
    assert_match "Usage: x-delete", shell_output("#{bin}/x-delete --help")
  end
end
