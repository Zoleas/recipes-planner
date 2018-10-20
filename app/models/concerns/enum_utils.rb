# frozen_string_literal: true

module EnumUtils
  extend ActiveSupport::Concern

  included do
    class << self
      def all
        constants.map { |constant| const_get(constant) }.freeze
      end

      def exists?(value)
        all.include?(value)
      end

      # Use like: MyEnum.slice(:key1, :key2)
      def slice(*keys)
        keys.map { |key| const_get(key) }.freeze
      end

      # Alias to use when the module has a constant named `ALL`,
      # to avoid a misunderstanding between `ALL` constant and `.all` method.
      alias_method :all_constants, :all
    end
  end
end