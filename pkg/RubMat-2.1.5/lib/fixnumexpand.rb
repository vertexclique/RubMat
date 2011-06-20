#!/usr/bin/ruby

=begin
= NAME
Fixnum Expandation Code v1.2.0

= SYNOPSIS
.seconds =1
.minutes =60
.hours =3600
.days =86400
.weeks =604800

= DESCRIPTION
This snippet expands Fixnum class and convert
time counts to (('string'))((-Object ending string-))
=end

class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
  def weeks
    self * 60 * 60 * 24 * 7
  end
end