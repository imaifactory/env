#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use FindBin::libs;
use Getopt::Long;
use Text::Xslate;

my $serverroot;
my $docroot;
my $port;
my $user;
my $group;
my $name;

GetOptions(
    'serverroot=s'    =>  \$serverroot,
    'docroot=s'       =>  \$docroot,
    'port=i'          =>  \$port,
    'user=s'          =>  \$user,
    'group=s'         =>  \$group,
    'name=s'          =>  \$name,
);

my $basedir = $ENV{HOME} . '/dev';

my $template = File::Slurp::read_file($basedir . '/httpd_confmaker/template');

my $tx = Text::Xslate->new();
my %vars = (
    serverroot  =>  $serverroot,
    docroot     =>  $docroot,
    port        =>  $port,
    user        =>  $user,
    group       =>  $group,
    accesslog   =>  $basedir . sprintf('/logs/%s.access_log', $name),
    errorlog    =>  $basedir . sprintf('/logs/%s.error_log', $name),
);


File::Slurp::write_file(
    $basedir . '/conf/' . $name . '.conf',
    $tx->render_string($template, \%vars)
);
