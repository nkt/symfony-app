<?php

namespace App\CoreBundle\Controller;

trait SecurityInject
{
    /**
     * @var \Symfony\Component\Security\Core\SecurityContextInterface
     */
    public $security;
}
