require 'rails_helper'

RSpec.describe TicTacToe do
  subject { described_class.new(board: board, player: player) }

  describe 'solved?' do
    context 'for solved board' do
      let(:board) { [['x', 'x', 'x'],
                     [nil, nil, nil],
                     [nil, nil, nil]] }
      let(:player) { 'x' }
      let(:index) { nil }

      it 'returns true' do
        expect(subject.solved?).to be_truthy
      end
    end

    context 'for unsolved board' do
      let(:board) { [[nil, nil, nil],
                     [nil, nil, nil],
                     [nil, nil, nil]] }
      let(:player) { 'x' }
      let(:index) { nil }

      it 'returns false' do
        expect(subject.solved?).to be_falsey
      end
    end
  end

  describe 'insert' do
    let(:board) { [[nil, nil, nil],
                   [nil, nil, nil],
                   [nil, nil, nil]] }
    let(:player) { 'x' }

    it 'inserts player into the board' do
      expect(subject.insert(0, 0)).to eq([['x', nil, nil],
                                          [nil, nil, nil],
                                          [nil, nil, nil]])
    end
  end
end
