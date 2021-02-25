## Trigger

Dead simple task manager written in pure ruby.

Also checkout [pueue](https://github.com/Nukesor/pueue).

### Install

To install it as a global command, manually build & install the gem:

```
> gh repo clone hyrious/trigger
> cd trigger
> gem build trigger.gemspec
> gem install trigger-0.1.0.gem
```

### Usage

**Simple Tasks (shell command)**

```
> trigger add "ls"
```

**Simple Tasks (ruby script)**

```
> trigger add rb:"require 'prime'; pp Prime.take 20"
```

**Complex Tasks (scripts)**

```
> trigger add task:name
```

Well, the task script should be written by yourself.
This shouldn't be hard, run this command to start writing the script:

```
> trigger task add name
# by default, it uses $EDITOR to open the script file
# if the variable is not set, it asks for a manual operation
```

```rb
# for example, I have several commands to run in sequence or parallel
Trigger::Task.new do |task|
  a = task.sh 'yarn build:something'
  b = task.sh 'yarn build:other'
  c = task.sh 'yarn start'
  d = task.rb { puts "byebye" }
  # a---.
  #     +--c--d-->(done)
  # b---'
  partial = task.(a, b).(c).(d)
  # to ignore a failure of a task, use task.pass { ... }
  e = task.pass { task.sh 'yarn lint' }
  # or its alias:
  e = task.sh? 'yarn lint'
  # a---.
  # b---+-c--d-->(done)
  # e---'
  partial.insert_before(e, c) # insert e before c, parallel by default
end
```

### FAQ

<dl>
    <dt>Name</dt>
    <dd>Just a random word.</dd>
    <dt>Why not publish to RubyGems?</dt>
    <dd>Not found a good name.</dd>
</dl>

### License

MIT @ [hyrious](https://github.com/hyrious)
