#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;

use Mail::DSPAM::Learning;

warn "\n\n\tRunning dspam-lean version " . $Mail::DSPAM::Learning::VERSION . "\n";


my $dspam_learner = Mail::DSPAM::Learning->new();

my $spam_mailbox = "examples/mbox";
warn "\tSetting Mailbox to parse ($spam_mailbox)\n";

$dspam_learner->setMailbox($spam_mailbox);

ok($dspam_learner->getMailbox(), 'set and get mailbox work');

