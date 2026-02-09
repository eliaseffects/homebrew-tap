# typed: false
# frozen_string_literal: true

class XApiCli < Formula
  desc "CLI for posting and deleting tweets with X API v2"
  homepage "https://github.com/eliaseffects/x-api-cli"
  url "https://github.com/eliaseffects/x-api-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "236d82f9ae36ebc37b5a08d4281c303c5108a71f9e41af38ae18a6a17bdb7971"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Usage: x-post", shell_output("#{bin}/x-post --help")
    assert_match "Usage: x-delete", shell_output("#{bin}/x-delete --help")
  end
end
