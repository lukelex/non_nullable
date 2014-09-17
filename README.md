# NonNullable

Avoids nil returns on specified Ruby methods.

## Usage

```ruby
class Post
  extend ::NotNil

  def content
    nil
  end

  avoid_nil_on :content
end

post.content # ""

# or on all instance methods

class Blog
  extend ::NotNil

  # ...tons of methods...

  avoid_nil_on *instance_methods
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem "non_nullable"
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install non_nullable
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/non_nullable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
