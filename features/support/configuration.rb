# ==================================================
# Description: Functions that support
#   load values from yml file and store in hash table.
#
# Author: Deric Nguni
# Date: 3/6/2018
# ==================================================
require 'hashie'
module Configuration
  def self.load
    envs = Hashie::Mash.load("#{Dir.pwd}/features/support/config.yml")
    # @config = envs[:test01].merge(envs[ENV['TEST_ENV'].to_sym]).merge(envs[ENV['
    # BROWSER'].to_sym]).merge(envs[ENV['EXEC_SPEED'].to_sym])

    requested_env = ENV['TEST_ENV']
    if !envs.key? requested_env.to_sym
      raise ArgumentError, "#{requested_env} is not a valid TEST_ENV, must be one of:\n#{envs.keys.join(', ')}"
    end

    @config = envs[:test01].merge(envs[ENV['TEST_ENV'].to_sym]).merge(envs[ENV['BROWSER'].to_sym])
  end

  private

  def self.method_missing(method, *args, &block)
    @config.send(method, *args, &block)
  end
end

Configuration.load