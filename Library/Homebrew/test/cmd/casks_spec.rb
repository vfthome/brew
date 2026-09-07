# typed: strict
# frozen_string_literal: true

RSpec.describe "brew casks", type: :system do
  it "prints all installed Casks", :integration_test do
    expect { brew_sh "casks", "HOMEBREW_BREW_SH" => sandboxed_brew_sh }
      .to be_a_success
      .and not_to_output.to_stderr
  end
end
