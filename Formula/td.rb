class Td < Formula
  desc "CLI for managing your todos — fast task management from the terminal"
  homepage "https://github.com/karthikg80/todos-api"
  url "https://registry.npmjs.org/@karthikg80/td/-/td-1.0.3.tgz"
  sha256 "1e0dc5d06410ce03425fa4ab20e5f1630230919c1c68adeaedbc84d093a9300e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end

  test do
    assert_match "CLI for managing your todos", shell_output("\#{bin}/td --help")
  end
end
