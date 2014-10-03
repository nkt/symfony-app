<?php

namespace App\CoreBundle\Controller;

trait MailerInject
{
    /**
     * @var \Swift_Mailer
     */
    public $mailer;
}
