require 'json'

file = __dir__ + '/../../problem-specifications/exercises/leap/canonical-data.json'
j = JSON.parse(File.read(file))
j['cases'].each { |c|
  puts <<~ZIG

    test "#{c['description']}" {
        testing.expect(#{?! unless c['expected']}leap.leap(#{c['input']['year']}));
    }
  ZIG
}
