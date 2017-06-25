# Perl::Critic docker container

# Run manually

## Run Perl::Critic and output HTML

Exit code is always `0` so that GitLab-CI can upload artifacts.

```
docker run -v $PWD:/tmp/workspace olegfiksel/perl_critic critichtml my_script.pl
```

## Run Perl::Critic in text mode

Exit codes:

* `0`: no errors
* `> 0`: errors found

```
docker run -v $PWD:/tmp/workspace olegfiksel/perl_critic critictext my_script.pl
```

## Run Perl::MinimumVersion

Exit codes:

* `0`: no errors
* `> 0`: errors found

```
docker run -v $PWD:/tmp/workspace olegfiksel/perl_critic test_perlver my_script.pl
```

# Run using GitLab-CI

See [.gitlab-ci.yml](/.gitlab-ci.yml) in this repo.

# Thanks

This container is based on http://blogs.lessthandot.com/index.php/webdev/perl/create-html-from-output-of/
