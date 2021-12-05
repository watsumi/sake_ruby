# frozen_string_literal: true

require_relative "sake_ruby/version"
require "yaml"

module SakeRuby
  class NoTokuteimeishoError < StandardError; end

  class << self
    def all
      @all ||= Dir["#{__dir__}/sake_ruby/tokuteimeisho/*.yml"].map { |file| YAML.load_file(file) }
    end

    def select_random
      all.sample
    end

    def find_by_tokuteimeisho(tokuteimeisho)
      tokuteimeishoshu = all.select { |q| q[:tokuteimeisho].eql?(tokuteimeisho) }
      return raise_no_tokuteimeisho_error!(tokuteimeisho) if tokuteimeishoshu.empty?

      tokuteimeishoshu
    end

    def draw_table
      puts <<~MESSAGE
        ======================================================================
        | 醸造アルコール |                      分類                         |
        |----------------|---------------------------------------------------|
        |    10%以上     |                     普通酒                        |
        |----------------|---------------------------------------------------|   
        |                |  普通酒  | 本醸造酒 |         特別本醸造酒        |
        |    10%以下     |----------|----------|-----------------------------|
        |                |    -     |    -     |    吟醸酒    |   大吟醸酒   |
        |----------------|---------------------|--------------|--------------|
        |                |                     |  純米吟醸酒  | 純米大吟醸酒 |
        |     不使用     |       純米酒        |-----------------------------|
        |                |                     |          特別純米酒         |
        |----------------|---------------------|-----------------------------|
        |    精米歩合    | 規制なし |  70%以下 |   60%以下    |    50%以下   |
        ======================================================================
      MESSAGE
    end

    private

    def raise_no_tokuteimeisho_error!(tokuteimeisho)
      raise NoTokuteimeishoError, "Can't find a #{tokuteimeisho}"
    end
  end
end
