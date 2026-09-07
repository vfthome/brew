# typed: strict
# frozen_string_literal: true

RSpec.describe "brew formulae", type: :system do
  it "prints all installed Formulae", :integration_test do
    expect { brew_sh "formulae", "HOMEBREW_BREW_SH" => sandboxed_brew_sh }
      .to be_a_success
      .and not_to_output.to_stderr
  end
end
