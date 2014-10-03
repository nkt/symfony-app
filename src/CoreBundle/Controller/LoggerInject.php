<?php

namespace App\CoreBundle\Controller;

trait LoggerInject
{
    /**
     * @var \Psr\Log\LoggerInterface
     */
    public $logger;
}
