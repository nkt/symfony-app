<?php

namespace App\CoreBundle\Controller;

trait EntityMangerInject
{
    /**
     * @var \Doctrine\ORM\EntityManager
     */
    public $em;
}
