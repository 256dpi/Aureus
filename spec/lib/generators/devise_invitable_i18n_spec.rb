require 'spec_helper'

require_relative '../../../lib/generators/aureus/devise_invitable_i18n/devise_invitable_i18n_generator'

describe Aureus::Generators::DeviseInvitableI18nGenerator do
  destination File.expand_path('../../../../tmp/gen', __FILE__)
  arguments ['en']

  before do
    prepare_destination
    run_generator
  end

  it 'creates view files' do
    assert_file 'config/locales/devise_invitable_base.en.yml'
    assert_file 'config/locales/devise_invitable_mail.en.yml'
    assert_file 'config/locales/devise_invitable_ui.en.yml'
  end
end