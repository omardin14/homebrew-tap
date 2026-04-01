class ScrumAgent < Formula
  include Language::Python::Virtualenv

  desc "AI-powered Scrum Master — decomposes projects into epics, stories, tasks, and sprint plans"
  homepage "https://github.com/omardin14/scrum-planning-ai-agent"
  url "https://files.pythonhosted.org/packages/source/s/scrum-agent/scrum_agent-1.3.0.tar.gz"
  sha256 "4e62ef4fb55c4d7e020d9e960b1cdfbecea415f23a809e560ad3938351d27a84"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  def caveats
    <<~EOS
      To get started, configure your API key:
        scrum-agent --setup

      Then launch the interactive planner:
        scrum-agent

      For headless/CI usage:
        scrum-agent --non-interactive --description "Build a todo app" --output json
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scrum-agent --version")
    assert_match "scrum-agent", shell_output("#{bin}/scrum-agent --help")
  end
end
