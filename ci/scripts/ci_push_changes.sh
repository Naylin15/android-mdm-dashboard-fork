#!/usr/bin/env bash
#
#  LICENSE
#
#  This file is part of Flyve MDM.
#
#  Admin Dashboard for Android is a subproject of Flyve MDM. Flyve MDM is a
#  mobile device management software.
#
#  Flyve MDM Admin Dashboard for Android is free software: you can redistribute 
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 3
#  of the License, or (at your option) any later version.
#
#  Flyve MDM Admin Dashboard for Android is distributed in the hope that it will 
#  be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  ------------------------------------------------------------------------------
#  @author    Rafael Hernandez - <rhernandez@teclib.com>
#  @author    Naylin Medina    - <nmedina@teclib.com>
#  @copyright Copyright (c) 2017 - 2018 Flyve MDM
#  @license   GPLv3 https://www.gnu.org/licenses/gpl-3.0.html
#  @link      https://github.com/flyve-mdm/android-mdm-dashboard/
#  @link      http://flyve.org/android-mdm-dashboard/
#  @link      https://flyve-mdm.com/
#  ------------------------------------------------------------------------------
#

# Push commits and tags to origin branch
git push --follow-tags origin $CIRCLE_BRANCH

# Update the develop branch step

# delete branch
git branch -D develop

# get fresh branch
git fetch origin develop

# go to develop
git checkout develop

# review some change
git pull origin develop

# rebase with master
git rebase master

# push develop
git push origin develop --force

# return to master
git checkout master