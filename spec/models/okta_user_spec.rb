require_relative '../spec_helper'

describe OktaUser do
  describe '.retrieve_from_cookie' do
    context 'when remember_token parameter blank' do
      it 'returns nil' do
        expect(OktaUser.retrieve_from_cookie('')).to be_nil
      end
    end
  end
end


