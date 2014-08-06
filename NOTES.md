#How to Cookbook

I extracted the good stuff from the [https://github.com/theodi/chef-odi-deployer](https://github.com/theodi/chef-odi-deployer) cookbook. Some of this might be redundant, but:

* `berks init` a new cookbook
* Copy the [Berksfile](https://github.com/theodi/chef-odi-deployer/blob/master/Berksfile) into it, and add `cookbook 'odi-deployer', github: 'theodi/chef-odi-deployer'
`
* Fill in the `metadata.rb` with the cookbooks you need (based off the `.kitchen.yml`), this will also require `depends 'odi-deployer'
`. Beware of any `::sub_recipes`
* Create the attributes by running the `kitchen.yml` through the crufty code in [this gist](https://gist.github.com/pikesley/60bc5bc6f376edb158c4)
* Set up the default recipe with a load of `include_recipe 'nodejs'` lines
* Crib the bits from the databags into the real databags. In this case, we're using a new databag called _certificates_, which makes thinge simpler. I think
  * Oh wait, this is an issue. The recipe relies on _node.chef_environment_ to get the DB credentials. There's something smelly here. We'll revisit this before we go to production
