# rubocop-nuzz
A collection of Rubocop styles (Ruby)

This is a gem to quickly get started with rubocop, using styles that I've customized.
It is highly opinionated, so it may not work for your project. However, I hope to eventually add a minimalist configuration that would be more flexible for any project.

This project will contain more than one gem, with each gem having two or more configurations. 

## rubocop-defaults.yml
This contains all defaults supplied by rubocop. The only configuration keys included for each cop in this file are Enabled, VersionAdded, VersionChanged. One caveat: If Rubocop's default is `Enabled: pending` by Rubocop, it will be changed to `Enabled: true` in this file.

Why do we need this file when Rubocop has a set of defaults? This allows for the behavior to remain consistent as long as your Rubocop version is compatible with this gem. It doesn't make sense to use an exact version dependency, because other gems may conflict with it. See [this](https://github.com/rails/rubocop-rails-omakase/issues/14#issuecomment-1879765824) comment and the follow-up comment for more context. Using this model allows for consistent behavior while ensuring that important cops are not overlooked (so long as the cops were not introduced in a newer Rubocop version than what this gem references).

## rubocop.yml
This inherits from rubocop-defaults, and contains the differences from those defaults, along with explanations of why they were changed. 

# Installation

`bundle add rubocop-nuzz-core --group=development`


Create a .rubocop.yml file at the project root, and insert the contents below:

```
inherit_gem: { rubocop-nuzz-core: rubocop.yml }
AllCops:
  TargetRubyVersion: [Your Ruby Version]
```

