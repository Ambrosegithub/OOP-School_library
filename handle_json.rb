require 'json'
require_relative 'book'
require_relative 'person'
require_relative 'rental'

module FileHandler
  def write_json(array, filepath)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: '  ',
      space_before: ' ',
      space: ' '
    }
    File.write(filepath, JSON.pretty_generate(array, opts))
  end

  def read_json(filepath)
    file = File.read(filepath)
    JSON.parse(file)
  end
end
