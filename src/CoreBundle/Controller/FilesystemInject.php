<?php

namespace App\CoreBundle\Controller;

trait FilesystemInject
{
    /**
     * @var \Symfony\Component\Filesystem\Filesystem
     */
    public $filesystem;
}
