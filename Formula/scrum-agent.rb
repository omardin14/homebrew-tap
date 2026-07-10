class ScrumAgent < Formula
  include Language::Python::Virtualenv

  desc "AI Scrum Master: decompose projects into epics, stories, tasks, sprints"
  homepage "https://github.com/omardin14/scrum-planning-ai-agent"
  url "https://files.pythonhosted.org/packages/08/a1/8a7b902b77d4a73ad9d8c298391e07fb626f245e301928e7bb8b535f65dd/scrum_agent-1.3.0.tar.gz"
  sha256 "4e62ef4fb55c4d7e020d9e960b1cdfbecea415f23a809e560ad3938351d27a84"
  license "MIT"

  # scrum-agent cannot be packaged for Homebrew: a required transitive
  # dependency (sqlite-vec, via langgraph-checkpoint-sqlite) publishes only
  # wheels and no source distribution, so Homebrew's source-build model cannot
  # resolve the dependency tree. Install with uv or pipx instead — they pull
  # prebuilt wheels straight from PyPI:
  #
  #   uv tool install scrum-agent      # recommended
  #   pipx install scrum-agent
  #
  disable! date:    "2026-07-09",
           because: "can't be packaged for Homebrew — use `uv tool install scrum-agent` or `pipx`"

  def install
    # Unreachable: disabled formulae never build. Kept so the formula remains a
    # valid, auditable stanza.
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scrum-agent --version")
  end
end
