<?php

namespace App\CoreBundle\Controller;

trait TemplatingInject
{
    /**
     * @var \Symfony\Component\Templating\EngineInterface
     */
    public $templating;
}
