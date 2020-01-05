# Boris Bikes Challenge
A program that emulates the docking stations, bikes and infrastructure for Transport for London's Santander Cycles.

## User stories

```
As a member of the public,
So that I can use a bike,
I'd like a docking station to release a bike.
```
```
As a member of the public,
So that I can use a good bike,
I'd like to see if a bike is working.
```
```
As a member of the public,
So I can return bikes I've hired,
I'd like to dock my bike at the docking station.
```
```
As a member of the public,
So I can decide whether to use the docking station,
I'd like to see a bike that has been docked.
```
```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```
```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations to have a default capacity of 20 bikes.
```
```
As a system maintainer,
So that busy areas can be served more effectively,
I'd like to be able to specify a larger capacity when necessary.
```
```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

## Getting started

`git clone`
`bundle install`

## Usage

```
$ irb

2.6.3 :001 > require './lib/docking_station.rb'
 => true

2.6.3 :002 > ds = DockingStation.new
 => #<DockingStation:0x00007ffa1599d650 @docked_bikes=[], @capacity=20>

2.6.3 :003 > ds.dock(b = Bike.new)
 => [#<Bike:0x00007ffa15995568 @working=true>]

2.6.3 :004 > ds.show_docked_bikes
 => [#<Bike:0x00007ffa15995568 @working=true>]

2.6.3 :005 > b.working?
 => true

2.6.3 :006 > ds.release_bike
 => #<Bike:0x00007ffa15995568 @working=true>

2.6.3 :007 > b.report_broken

2.6.3 :008 > b.working?
 => false
 ```
## Running tests

`rspec`
